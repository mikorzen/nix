{ lib, ... }: {
  wayland.windowManager.hyprland.settings = {
    "$terminal" = lib.mkForce "warp-terminal";
    "$terminal-bak" = "blackbox";
    "$browser" = lib.mkForce "microsoft-edge";

    bind = [ "$mainMod, Y, exec, $terminal-bak" ];
  };
}