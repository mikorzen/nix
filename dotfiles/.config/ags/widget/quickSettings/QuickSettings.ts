import type Gtk from "gi://Gtk?version=3.0";
import { ProfileSelector, ProfileToggle } from "./widgets/PowerProfile";
import { Header } from "./widgets/Header";
import { Volume, Microphone, SinkSelector, AppMixer } from "./widgets/Volume";
import { Brightness } from "./widgets/Brightness";
import { NetworkToggle, WifiSelection } from "./widgets/Network";
import { BluetoothToggle, BluetoothDevices } from "./widgets/Bluetooth";
import { DND } from "./widgets/DND";
import { DarkModeToggle } from "./widgets/DarkMode";
import { MicMute } from "./widgets/MicMute";
import { Media } from "./widgets/Media";
import PopupWindow from "widget/PopupWindow";
import options from "options";

const { bar, quickSettings } = options;
const media = (await Service.import("mpris")).bind("players");
const layout = Utils.derive(
    [bar.position, quickSettings.position],
    (bar, qs) => `${bar}-${qs}` as const
);

const Row = (
    toggles: Array<() => Gtk.Widget> = [],
    menus: Array<() => Gtk.Widget> = []
) =>
    Widget.Box({
        vertical: true,
        children: [
            Widget.Box({
                homogeneous: true,
                class_name: "row horizontal",
                children: toggles.map((w) => w()),
            }),
            ...menus.map((w) => w()),
        ],
    });

const Settings = () =>
    Widget.Box({
        vertical: true,
        class_name: "quick-settings vertical",
        css: quickSettings.width.bind().as((w) => `min-width: ${w}px;`),
        children: [
            Header(),
            Widget.Box({
                class_name: "sliders-box vertical",
                vertical: true,
                children: [
                    Row([Volume], [SinkSelector, AppMixer]),
                    Microphone(),
                    Brightness(),
                ],
            }),
            Row(
                [NetworkToggle, BluetoothToggle],
                [WifiSelection, BluetoothDevices]
            ),
            Row([ProfileToggle, DarkModeToggle], [ProfileSelector]),
            Row([MicMute, DND]),
            Widget.Box({
                visible: media.as((l) => l.length > 0),
                child: Media(),
            }),
        ],
    });

const QuickSettings = () =>
    PopupWindow({
        name: "quick-settings",
        exclusivity: "exclusive",
        transition: bar.position
            .bind()
            .as((pos) => (pos === "top" ? "slide_down" : "slide_up")),
        layout: layout.value,
        child: Settings(),
    });

export function setupQuickSettings() {
    App.addWindow(QuickSettings());
    layout.connect("changed", () => {
        App.removeWindow("quick-settings");
        App.addWindow(QuickSettings());
    });
}
