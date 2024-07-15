import { type RowProperties } from "./partials/Row";
import { Option } from "lib/option";
import icons from "lib/icons";
import Gdk from "gi://Gdk";

function EnumSetter(opt: Option<string>, values: string[]) {
    const label = Widget.Label({ label: opt.bind().as((v) => `${v}`) });
    const step = (dir: 1 | -1) => {
        const i = values.findIndex((i) => i === label.label);
        opt.setValue(
            dir > 0
                ? i + dir > values.length - 1
                    ? values[0]
                    : values[i + dir]
                : i + dir < 0
                  ? values[values.length - 1]
                  : values[i + dir]
        );
    };
    const next = Widget.Button({
        child: Widget.Icon(icons.ui.arrow.right),
        on_clicked: () => step(+1),
    });
    const previous = Widget.Button({
        child: Widget.Icon(icons.ui.arrow.left),
        on_clicked: () => step(-1),
    });
    return Widget.Box({
        class_name: "enum-setter",
        children: [label, previous, next],
    });
}

export default function Setter<T>({
    option,
    type = typeof option.value as RowProperties<T>["type"],
    enums,
    max = 1000,
    min = 0,
}: RowProperties<T>) {
    switch (type) {
        case "number":
            return Widget.SpinButton({
                setup(self) {
                    self.set_range(min, max);
                    self.set_increments(1, 5);
                    self.on(
                        "value-changed",
                        () => (option.value = self.value as T)
                    );
                    self.hook(
                        option,
                        () => (self.value = option.value as number)
                    );
                },
            });

        case "float":
        case "object":
            return Widget.Entry({
                on_accept: (self) =>
                    (option.value = JSON.parse(self.text || "")),
                setup: (self) =>
                    self.hook(
                        option,
                        () => (self.text = JSON.stringify(option.value))
                    ),
            });

        case "string":
            return Widget.Entry({
                on_accept: (self) => (option.value = self.text as T),
                setup: (self) =>
                    self.hook(
                        option,
                        () => (self.text = option.value as string)
                    ),
            });

        case "enum":
            return EnumSetter(option as unknown as Option<string>, enums!);

        case "boolean":
            return Widget.Switch()
                .on(
                    "notify::active",
                    (self) => (option.value = self.active as T)
                )
                .hook(
                    option,
                    (self) => (self.active = option.value as boolean)
                );

        case "img":
            return Widget.FileChooserButton({
                on_file_set: ({ uri }) => {
                    option.value = uri!.replace("file://", "") as T;
                },
            });

        case "font":
            return Widget.FontButton({
                show_size: false,
                use_size: false,
                setup: (self) =>
                    self
                        .hook(
                            option,
                            () => (self.font = option.value as string)
                        )
                        .on(
                            "font-set",
                            ({ font }) =>
                                (option.value = font!
                                    .split(" ")
                                    .slice(0, -1)
                                    .join(" ") as T)
                        ),
            });

        case "color":
            return Widget.ColorButton()
                .hook(option, (self) => {
                    const rgba = new Gdk.RGBA();
                    rgba.parse(option.value as string);
                    self.rgba = rgba;
                })
                .on("color-set", ({ rgba: { red, green, blue } }) => {
                    const hex = (n: number) => {
                        const c = Math.floor(255 * n).toString(16);
                        return c.length === 1 ? `0${c}` : c;
                    };
                    option.value = `#${hex(red)}${hex(green)}${hex(blue)}` as T;
                });

        default:
            return Widget.Label({
                label: `no setter with type ${type}`,
            });
    }
}
