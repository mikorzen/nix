{ pkgs, ... }: {
  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
    };
    portal = {
      enable = true;
      extraPortals = [ 
        pkgs.xdg-desktop-portal-hyprland
        pkgs.xdg-desktop-portal-gtk 
      ];
      config.common.default = [ "hyprland" "gtk" ];
    };
  };

  home.preferXdgDirectories = true;
}