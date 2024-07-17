import { option, makeOptions } from "lib/option";
import { distro } from "lib/variables";
import { icon } from "lib/utils";
import { BarWidget } from "widget/bar/Bar";
import icons from "lib/icons";

export default makeOptions(OPTIONS, {
    wallpaper: {
        resolution: option<import("service/wallpaper").Resolution>(1920),
        market: option<import("service/wallpaper").Market>("random"),
    },

    look: {
        theme: {
            autotheme: option(false),
            scheme: option<"dark" | "light">("dark"),
            dark: {
                primary: {
                    bg: option("#51a4e7"),
                    fg: option("#141414"),
                },
                error: {
                    bg: option("#e55f86"),
                    fg: option("#141414"),
                },
                bg: option("#171717"),
                fg: option("#eeeeee"),
                widget: option("#eeeeee"),
                border: option("#eeeeee"),
            },
            light: {
                primary: {
                    bg: option("#426ede"),
                    fg: option("#eeeeee"),
                },
                error: {
                    bg: option("#b13558"),
                    fg: option("#eeeeee"),
                },
                bg: option("#fffffa"),
                fg: option("#080808"),
                widget: option("#080808"),
                border: option("#080808"),
            },
        },

        effects: {
            shadows: option(true),
            blur: option(0),
            widget: { opacity: option(94) },
        },

        layout: {
            padding: option(7),
            spacing: option(11),
            radius: option(11),
            border: {
                width: option(1),
                opacity: option(94),
            },
        },

        font: {
            size: option(11),
            name: option("Ubuntu Nerd Font"),
        },
    },

    transition: option(200),

    bar: {
        flatButtons: option(true),
        position: option<"top" | "bottom">("top"),
        corners: option(50),
        transparent: option(true),
        layout: {
            start: option<Array<BarWidget>>([
                "launcher",
                "workspaces",
                // "taskbar",
                "expander",
            ]),
            center: option<Array<BarWidget>>([
                "invisibleBox",
                "notifications",
                "date",
                "media",
                "invisibleBox",
            ]),
            end: option<Array<BarWidget>>([
                "expander",
                "systemTray",
                // "colorPicker",
                "screenRecord",
                "systemIndicators",
                "batteryBar",
                "powerMenu",
            ]),
        },

        launcher: {
            icon: {
                colored: option(true),
                icon: option(icon(distro.logo, icons.ui.search)),
            },
            label: {
                colored: option(false),
                label: option(""),
            },
            action: option(() => App.toggleWindow("launcher")),
        },
        workspaces: {
            workspaces: option(5),
        },
        taskbar: {
            iconSize: option(0),
            monochrome: option(true),
            exclusive: option(false),
        },

        notifications: {
            action: option(() => App.toggleWindow("datemenu")),
        },
        date: {
            format: option("%A, %-e %B  •  %H:%M:%S"),
            action: option(() => App.toggleWindow("datemenu")),
        },
        media: {
            monochrome: option(true),
            preferred: option("spotify"),
            direction: option<"left" | "right">("right"),
            format: option("{artists} - {title}"),
            length: option(40),
        },

        systemTray: {
            ignore: option(["KDE Connect Indicator", "spotify-client"]),
        },
        battery: {
            bar: option<"hidden" | "regular" | "whole">("regular"),
            charging: option("#00D787"),
            percentage: option(true),
            blocks: option(10),
            width: option(50),
            lowThreshold: option(20),
        },
        powerMenu: {
            monochrome: option(false),
            action: option(() => App.toggleWindow("power-menu")),
        },
    },

    launcher: {
        width: option(0),
        margin: option(80),
        nix: {
            pkgs: option("nixpkgs/nixos-unstable"),
            max: option(8),
        },
        sh: {
            max: option(16),
        },
        apps: {
            iconSize: option(72),
            max: option(6),
            favorites: option([["nautilus", "microsoft-edge", "visual studio code", "warp"]]),
        },
    },

    overview: {
        scale: option(12),
        workspaces: option(5),
        monochromeIcon: option(true),
    },

    notifications: {
        position: option<Array<"top" | "bottom" | "left" | "right">>([
            "top",
            "right",
        ]),
        blacklist: option(["Spotify"]),
        width: option(440),
    },

    datemenu: {
        position: option<"left" | "center" | "right">("center"),
        weather: {
            interval: option(60_000),
            unit: option<"metric" | "imperial" | "standard">("metric"),
            key: option<string>(
                JSON.parse(Utils.readFile(`${App.configDir}/.weather`) || "{}")
                    ?.key || ""
            ),
            cities: option<Array<number>>(
                JSON.parse(Utils.readFile(`${App.configDir}/.weather`) || "{}")
                    ?.cities || []
            ),
        },
    },

    quickSettings: {
        avatar: {
            image: option(`${Utils.HOME}/Pictures/Avatars/doggo-hires.png`),
            size: option(70),
        },
        width: option(380),
        position: option<"left" | "center" | "right">("right"),
        networkSettings: option("gtk-launch gnome-control-center"),
        media: {
            monochromeIcon: option(true),
            coverSize: option(100),
        },
    },

    powerMenu: {
        sleep: option("systemctl suspend"),
        reboot: option("systemctl reboot"),
        logout: option("pkill Hyprland"),
        shutdown: option("shutdown now"),
        layout: option<"line" | "box">("line"),
        labels: option(true),
    },

    osd: {
        progress: {
            vertical: option(true),
            pack: {
                h: option<"start" | "center" | "end">("end"),
                v: option<"start" | "center" | "end">("center"),
            },
        },
        microphone: {
            pack: {
                h: option<"start" | "center" | "end">("center"),
                v: option<"start" | "center" | "end">("end"),
            },
        },
        sound: {
            pack: {
                h: option<"start" | "center" | "end">("center"),
                v: option<"start" | "center" | "end">("end"),
            },
        },
    },

    hyprland: {
        gaps: option(2.4),
        inactiveBorder: option("#282828"),
        gapsWhenOnly: option(false),
    },
});
