import icons from "lib/icons";
import options from "options";
import PanelButton from "../PanelButton";

const mpris = await Service.import("mpris");
const { preferred } = options.bar.media;

const getPlayer = (name = preferred.value) =>
    mpris.getPlayer(name) || mpris.players[0] || null;

export default () => {
    let player = getPlayer();

    const btn = PanelButton({
        opacity: 0,
        child: Widget.Icon(icons.fallback.audio),
    });

    const update = () => {
        player = getPlayer();
        btn.visible = !player;

        if (!!player) return;
    };

    return btn.hook(preferred, update).hook(mpris, update, "notify::players");
};
