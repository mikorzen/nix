import icons from "lib/icons";
import PanelButton from "../PanelButton";

const n = await Service.import("notifications");
const notifs = n.bind("notifications");

export default () =>
    PanelButton({
        opacity: 0,
        visible: notifs.as((n) => n.length === 0),
        child: Widget.Box([Widget.Icon(icons.notifications.message)]),
    });
