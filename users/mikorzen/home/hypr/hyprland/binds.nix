{ lib, ... }: {
  wayland.windowManager.hyprland.settings = {
    "$terminal" = lib.mkForce "warp-terminal";
    "$terminal-backup" = "blackbox";
    "$browser" = lib.mkForce "microsoft-edge";

    bind = [ "$mainMod, Y, exec, $terminal-backup" ];
  };
}