import icons from "lib/icons";
import PanelButton from "../PanelButton";
import options from "options";

const { monochrome, action } = options.bar.powerMenu;

export default () =>
    PanelButton({
        window: "power-menu",
        on_clicked: action.bind(),
        child: Widget.Icon(icons.powerMenu.shutdown),
        setup: (self) =>
            self.hook(monochrome, () => {
                self.toggleClassName("colored", !monochrome.value);
                self.toggleClassName("box");
            }),
    });
