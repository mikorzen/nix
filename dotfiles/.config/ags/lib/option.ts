import { Variable } from "resource:///com/github/Aylur/ags/variable.js";

type OptionProperties = {
    persistent?: boolean;
};

function getCache(cacheFile: string) {
    return JSON.parse(Utils.readFile(cacheFile) || "{}");
}

function writeCache(cacheFile: string, value: object) {
    Utils.writeFileSync(JSON.stringify(value, null, 2), cacheFile);
}

export class Option<T = unknown> extends Variable<T> {
    id = "";
    initial: T;
    persistent: boolean;

    static {
        Service.register(this);
    }

    constructor(initial: T, { persistent = false }: OptionProperties = {}) {
        super(initial);
        this.initial = initial;
        this.persistent = persistent;
    }

    getValue() {
        return super.getValue();
    }

    toString() {
        return `${this.value}`;
    }

    toJSON() {
        return `option:${this.value}`;
    }

    init(cacheFile: string) {
        const cache = getCache(cacheFile)[this.id];
        if (cache !== undefined) this.value = cache;

        this.connect("changed", () => {
            const cache = getCache(cacheFile);
            cache[this.id] = this.value;
            writeCache(cacheFile, cache);
        });
    }

    reset() {
        if (this.persistent) return;

        if (JSON.stringify(this.value) !== JSON.stringify(this.initial)) {
            this.value = this.initial;
            return this.id;
        }
    }
}

export const option = <T>(initial: T, options?: OptionProperties) =>
    new Option(initial, options);

function getOptions(optionsObject: object, path = ""): Option[] {
    return Object.keys(optionsObject).flatMap((key) => {
        const id = path ? path + "." + key : key;
        const option: Option = optionsObject[key];

        if (option instanceof Variable) {
            option.id = id;
            return option;
        }

        if (typeof option === "object") {
            return getOptions(option, id);
        }

        return [];
    });
}

export function makeOptions<T extends object>(
    cacheFile: string,
    optionsObject: T
) {
    for (const option of getOptions(optionsObject)) option.init(cacheFile);

    Utils.ensureDirectory(cacheFile.split("/").slice(0, -1).join("/"));

    const configFile = `${TMP}/config.json`;
    const values = getOptions(optionsObject).reduce(
        (object, { id, value }) => ({ [id]: value, ...object }),
        {}
    );
    writeCache(configFile, values);
    Utils.monitorFile(configFile, () => {
        const cache = getCache(configFile);
        for (const option of getOptions(optionsObject)) {
            let cachedOption = cache[option.id];
            if (JSON.stringify(cachedOption) !== JSON.stringify(option.value))
                option.value = cachedOption;
        }
    });

    function sleep(ms = 0) {
        return new Promise((r) => setTimeout(r, ms));
    }

    async function reset(
        [option, ...list] = getOptions(optionsObject),
        id = option?.reset()
    ): Promise<Array<string>> {
        if (!option) {
            return sleep().then(() => []);
        }

        return id
            ? [id, ...(await sleep(50).then(() => reset(list)))]
            : await sleep().then(() => reset(list));
    }

    return Object.assign(optionsObject, {
        configFile,
        array: () => getOptions(optionsObject),
        async reset() {
            return (await reset()).join("\n");
        },
        handler(deps: string[], callback: () => void) {
            for (const opt of getOptions(optionsObject)) {
                if (deps.some((i) => opt.id.startsWith(i)))
                    opt.connect("changed", callback);
            }
        },
    });
}
