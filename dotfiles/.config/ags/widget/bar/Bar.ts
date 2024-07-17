import BatteryBar from "./buttons/BatteryBar"
import ColorPicker from "./buttons/ColorPicker"
import Date from "./buttons/Date"
import Launcher from "./buttons/Launcher"
import Media from "./buttons/Media"
import PowerMenu from "./buttons/PowerMenu"
import SystemTray from "./buttons/SystemTray"
import SystemIndicators from "./buttons/SystemIndicators"
import Taskbar from "./buttons/Taskbar"
import Workspaces from "./buttons/Workspaces"
import ScreenRecord from "./buttons/ScreenRecord"
import Notifications from "./buttons/Notifications"
import InvisibleMedia from "./buttons/InvisibleMedia"
import InvisibleNotifications from "./buttons/InvisibleNotifications"
import options from "options"

const { start, center, end } = options.bar.layout
const { transparent, position } = options.bar

export type BarWidget = keyof typeof widget

const widget = {
    launcher: Launcher,
    workspaces: Workspaces,
    taskbar: Taskbar,

    notifications: Notifications,
    date: Date,
    media: Media,

    systemTray: SystemTray,
    colorPicker: ColorPicker,
    screenRecord: ScreenRecord,
    systemIndicators: SystemIndicators,
    batteryBar: BatteryBar,
    powerMenu: PowerMenu,

    invisibleMedia: InvisibleMedia,
    invisibleNotifications: InvisibleNotifications,
    expander: () => Widget.Box({ expand: true }),
}

export default (monitor: number) => Widget.Window({
    monitor,
    class_name: "bar",
    name: `bar${monitor}`,
    exclusivity: "exclusive",
    anchor: position.bind().as(pos => [pos, "right", "left"]),
    child: Widget.CenterBox({
        css: "min-width: 2px; min-height: 2px; padding-bottom: 3px;",
        startWidget: Widget.Box({
            hexpand: true,
            children: start.bind().as(s => s.map(w => widget[w]())),
        }),
        centerWidget: Widget.Box({
            hpack: "center",
            children: center.bind().as(c => c.map(w => widget[w]())),
        }),
        endWidget: Widget.Box({
            hexpand: true,
            children: end.bind().as(e => e.map(w => widget[w]())),
        }),
    }),
    setup: self => self.hook(transparent, () => {
        self.toggleClassName("transparent", transparent.value)
    }),
})
