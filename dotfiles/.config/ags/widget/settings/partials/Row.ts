import { Option } from "lib/option";
import Setter from "../Setter";
import icons from "lib/icons";

export type RowProperties<T> = {
    option: Option<T>;
    title: string;
    note?: string;
    type?:
        | "number"
        | "color"
        | "float"
        | "object"
        | "string"
        | "enum"
        | "boolean"
        | "img"
        | "font";
    enums?: string[];
    max?: number;
    min?: number;
};

export default <T>(properties: RowProperties<T>) =>
    Widget.Box(
        {
            attribute: { option: properties.option },
            class_name: "row",
            tooltip_text: properties.note ? `note: ${properties.note}` : "",
        },
        Widget.Box(
            { vertical: true, vpack: "center" },
            Widget.Label({
                xalign: 0,
                class_name: "row-title",
                label: properties.title,
            }),
            Widget.Label({
                xalign: 0,
                class_name: "id",
                label: properties.option.id,
            })
        ),
        Widget.Box({ hexpand: true }),
        Widget.Box({ vpack: "center" }, Setter(properties)),
        Widget.Button({
            vpack: "center",
            class_name: "reset",
            child: Widget.Icon(icons.ui.refresh),
            on_clicked: () => properties.option.reset(),
            sensitive: properties.option
                .bind()
                .as((v) => v !== properties.option.initial),
        })
    );
