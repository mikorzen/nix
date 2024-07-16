{ lib, ... }: let
  terminal = {
    name = "warp-terminal";
    class = "dev.warp.Warp";
  };
  terminal-backup = {
    name = "blackbox";
    class = "com.raggesilver.BlackBox";
  };
  browser = {
    name = "microsoft-edge";
    class = "microsoft-edge";
  };
in {
  wayland.windowManager.hyprland.settings = with lib; {
    "$terminal"      = mkForce terminal.name;
    "$terminalClass" = mkForce terminal.class;

    "$terminalBackup"      = mkForce terminal-backup.name;
    "$terminalBackupClass" = mkForce terminal-backup.class;

    "$browser"      = mkForce browser.name;
    "$browserClass" = mkForce browser.class;
  };
}
