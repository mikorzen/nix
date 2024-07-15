import options from "options"

const { sleep, reboot, logout, shutdown } = options.powerMenu

export type Action = "sleep" | "reboot" | "logout" | "shutdown"

class PowerMenu extends Service {
    static {
        Service.register(this, {}, {
            "title": ["string"],
            "cmd": ["string"],
        })
    }

    #title = ""
    #cmd = ""

    get title() { return this.#title }

    action(action: Action) {
        [this.#cmd, this.#title] = {
            sleep: [sleep.value, "Sleep"],
            reboot: [reboot.value, "Reboot"],
            logout: [logout.value, "Log Out"],
            shutdown: [shutdown.value, "Shutdown"],
        }[action]

        this.notify("cmd")
        this.notify("title")
        this.emit("changed")
        App.closeWindow("power-menu")
        App.openWindow("verification")
    }

    readonly exec = () => {
        App.closeWindow("verification")
        Utils.exec(this.#cmd)
    }
}

export default new PowerMenu
