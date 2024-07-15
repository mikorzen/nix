/* eslint-disable max-len */
import Row from "./partials/Row";
import Group from "./partials/Group";
import Page from "./partials/Page";
import Wallpaper from "./Wallpaper";
import options from "options";
import icons from "lib/icons";

const {
    look,
    bar,
    launcher,
    overview,
    powerMenu,
    quickSettings,
    osd,
    hyprland,
} = options;

const { theme, effects, layout, font } = look;

export default [
    Page(
        "Look",
        icons.ui.themes,
        Group(
            "Theme",
            Row({
                option: theme.autotheme,
                title: "Auto Generate Color Scheme",
            }),
            Row({
                option: theme.scheme,
                title: "Color Scheme",
                type: "enum",
                enums: ["dark", "light"],
            })
        ),
        Group(
            "Dark Scheme",
            Row({ option: theme.dark.bg, title: "Background", type: "color" }),
            Row({ option: theme.dark.fg, title: "Foreground", type: "color" }),
            Row({
                option: theme.dark.primary.bg,
                title: "Primary",
                type: "color",
            }),
            Row({
                option: theme.dark.primary.fg,
                title: "On Primary",
                type: "color",
            }),
            Row({ option: theme.dark.error.bg, title: "Error", type: "color" }),
            Row({
                option: theme.dark.error.fg,
                title: "On Error",
                type: "color",
            }),
            Row({ option: theme.dark.widget, title: "Widget", type: "color" }),
            Row({ option: theme.dark.border, title: "Border", type: "color" })
        ),
        Group(
            "Light Scheme",
            Row({ option: theme.light.bg, title: "Background", type: "color" }),
            Row({ option: theme.light.fg, title: "Foreground", type: "color" }),
            Row({
                option: theme.light.primary.bg,
                title: "Primary",
                type: "color",
            }),
            Row({
                option: theme.light.primary.fg,
                title: "On Primary",
                type: "color",
            }),
            Row({
                option: theme.light.error.bg,
                title: "Error",
                type: "color",
            }),
            Row({
                option: theme.light.error.fg,
                title: "On Error",
                type: "color",
            }),
            Row({ option: theme.light.widget, title: "Widget", type: "color" }),
            Row({ option: theme.light.border, title: "Border", type: "color" })
        ),
        Group(
            "Effects",
            Row({ option: effects.shadows, title: "Shadows" }),
            Row({
                option: effects.blur,
                title: "Blur",
                note: "0 to disable",
                max: 70,
            }),
            Row({
                option: effects.widget.opacity,
                title: "Widget Opacity",
                max: 100,
            })
        ),
        Group(
            "Layout",
            Row({ option: layout.padding, title: "Padding" }),
            Row({ option: layout.spacing, title: "Spacing" }),
            Row({ option: layout.radius, title: "Roundness" }),
            Row({
                option: layout.border.opacity,
                title: "Border Opacity",
                max: 100,
            }),
            Row({ option: layout.border.width, title: "Border Width" })
        ),
        Group(
            "Font",
            Row({ option: font.size, title: "Font Size" }),
            Row({ option: font.name, title: "Font Name", type: "font" })
        )
    ),
    Page(
        "Bar",
        icons.ui.toolbars,
        Group(
            "General",
            Row({
                option: bar.transparent,
                title: "Transparent Bar",
                note: "Works best on empty-ish wallpapers",
            }),
            Row({ option: bar.flatButtons, title: "Flat Buttons" }),
            Row({
                option: bar.position,
                title: "Position",
                type: "enum",
                enums: ["top", "bottom"],
            }),
            Row({ option: bar.corners, title: "Corners" })
        ),
        Group(
            "Launcher",
            Row({ option: bar.launcher.icon.icon, title: "Icon" }),
            Row({ option: bar.launcher.icon.colored, title: "Colored Icon" }),
            Row({ option: bar.launcher.label.label, title: "Label" }),
            Row({ option: bar.launcher.label.colored, title: "Colored Label" })
        ),
        Group(
            "Workspaces",
            Row({
                option: bar.workspaces.workspaces,
                title: "Number of Workspaces",
                note: "0 to make it dynamic",
            })
        ),
        Group(
            "Taskbar",
            Row({ option: bar.taskbar.iconSize, title: "Icon Size" }),
            Row({ option: bar.taskbar.monochrome, title: "Monochrome" }),
            Row({
                option: bar.taskbar.exclusive,
                title: "Exclusive to workspaces",
            })
        ),
        Group("Date", Row({ option: bar.date.format, title: "Date Format" })),
        Group(
            "Media",
            Row({ option: bar.media.monochrome, title: "Monochrome" }),
            Row({ option: bar.media.preferred, title: "Preferred Player" }),
            Row({
                option: bar.media.direction,
                title: "Slide Direction",
                type: "enum",
                enums: ["left", "right"],
            }),
            Row({ option: bar.media.format, title: "Format of the Label" }),
            Row({ option: bar.media.length, title: "Max Length of Label" })
        ),
        Group(
            "Battery",
            Row({
                option: bar.battery.bar,
                title: "Style",
                type: "enum",
                enums: ["hidden", "regular", "whole"],
            }),
            Row({ option: bar.battery.blocks, title: "Number of Blocks" }),
            Row({ option: bar.battery.width, title: "Width of Bar" }),
            Row({
                option: bar.battery.charging,
                title: "Charging Color",
                type: "color",
            })
        ),
        Group(
            "Powermenu",
            Row({ option: bar.powerMenu.monochrome, title: "Monochrome" })
        )
    ),
    Page(
        "General",
        icons.ui.settings,
        Group(
            "Hyprland",
            Row({ option: hyprland.gapsWhenOnly, title: "Gaps When Only" }),
            Row({
                option: hyprland.inactiveBorder,
                type: "color",
                title: "Inactive Border Color",
            })
        ),
        Group(
            "Launcher",
            Row({ option: launcher.width, title: "Width" }),
            Row({ option: launcher.apps.iconSize, title: "Icon Size" }),
            Row({ option: launcher.apps.max, title: "Max Items" })
        ),
        Group(
            "Overview",
            Row({ option: overview.scale, title: "Scale", max: 100 }),
            Row({
                option: overview.workspaces,
                title: "Workspaces",
                max: 11,
                note: "set this to 0 to make it dynamic",
            }),
            Row({ option: overview.monochromeIcon, title: "Monochrome Icons" })
        ),
        Group(
            "Powermenu",
            Row({
                option: powerMenu.layout,
                title: "Layout",
                type: "enum",
                enums: ["box", "line"],
            }),
            Row({ option: powerMenu.labels, title: "Show Labels" })
        ),
        Group(
            "Quicksettings",
            Row({
                option: quickSettings.avatar.image,
                title: "Avatar",
                type: "img",
            }),
            Row({ option: quickSettings.avatar.size, title: "Avatar Size" }),
            Row({
                option: quickSettings.media.monochromeIcon,
                title: "Media Monochrome Icons",
            }),
            Row({
                option: quickSettings.media.coverSize,
                title: "Media Cover Art Size",
            })
        ),
        Group(
            "On Screen Indicator",
            Row({ option: osd.progress.vertical, title: "Vertical" }),
            Row({
                option: osd.progress.pack.h,
                title: "Horizontal Alignment",
                type: "enum",
                enums: ["start", "center", "end"],
            }),
            Row({
                option: osd.progress.pack.v,
                title: "Vertical Alignment",
                type: "enum",
                enums: ["start", "center", "end"],
            })
        )
    ),
] as const;
