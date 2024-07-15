import icons from "lib/icons";
import PanelButton from "../PanelButton";
import options from "options";

const n = await Service.import("notifications");
const notifs = n.bind("notifications");
const action = options.bar.notifications.action.bind();

export default () =>
    PanelButton({
        class_name: "notifications",
        on_clicked: action,
        // opacity: notifs.as(n => n.length > 0 ? 1 : 0),
        visible: notifs.as((n) => n.length > 0),
        child: Widget.Box([Widget.Icon(icons.notifications.message)]),
    });
