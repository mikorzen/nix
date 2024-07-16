import { sh } from "lib/utils"

class Inhibitor extends Service {
    static {
        Service.register(this, {}, {
            "inhibited": ["boolean", "r"],
        })
    }

    #inhibited = Utils.exec("systemctl --user is-active hypridle") === "inactive";

    get inhibited() { return this.#inhibited }

    constructor() {
        super()
    }

    async toggle() {
        if (this.#inhibited)
            await sh("systemctl --user start hypridle");
        else
            await sh("systemctl --user stop hypridle");
        this.#inhibited = !this.#inhibited;
        this.changed("inhibited");
    }
}

export default new Inhibitor
