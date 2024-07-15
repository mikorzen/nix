import icons from "lib/icons";
import Row from "./Row";

export default (title: string, ...rows: ReturnType<typeof Row<any>>[]) =>
    Widget.Box(
        {
            class_name: "group",
            vertical: true,
        },
        Widget.Box([
            Widget.Label({
                hpack: "start",
                vpack: "end",
                class_name: "group-title",
                label: title,
                setup: (w) => Utils.idle(() => (w.visible = !!title)),
            }),
            title
                ? Widget.Button({
                      hexpand: true,
                      hpack: "end",
                      child: Widget.Icon(icons.ui.refresh),
                      class_name: "group-reset",
                      sensitive: Utils.merge(
                          rows.map(({ attribute: { option } }) =>
                              option.bind().as((v) => v !== option.initial)
                          ),
                          (...values) => values.some((b) => b)
                      ),
                      on_clicked: () =>
                          rows.forEach((row) => row.attribute.option.reset()),
                  })
                : Widget.Box(),
        ]),
        Widget.Box({
            vertical: true,
            children: rows,
        })
    );
