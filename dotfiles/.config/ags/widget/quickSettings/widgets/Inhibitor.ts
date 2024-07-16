import { SimpleToggleButton } from "../ToggleButton";
import icons from "lib/icons";
import inhibitor from "service/inhibitor";

const inhibited = inhibitor.bind("inhibited");

const icon = (inhibited) =>
    inhibited ? icons.inhibitor.awake : icons.inhibitor.sleepy;

const label = (inhibited) => (inhibited ? "Awake" : "Sleepy");

export const Inhibitor = () =>
    SimpleToggleButton({
        icon: inhibited.as(icon),
        label: inhibited.as(label),
        toggle: () => inhibitor.toggle(),
        connection: [inhibitor, () => inhibitor.inhibited],
    });
