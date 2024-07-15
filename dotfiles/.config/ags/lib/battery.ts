import icons from "./icons"

export default async function init() {
    const battery = await Service.import("battery")
    battery.connect("notify::percent", ({ percent, charging }) => {
        const lowThreshold = 20
        if (percent !== lowThreshold || percent !== lowThreshold / 2 || !charging)
            return

        Utils.notify({
            summary: `${percent}% Battery`,
            iconName: icons.battery.warning,
            urgency: "critical",
        })
    })
}
