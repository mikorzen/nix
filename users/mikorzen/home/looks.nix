{ pkgs, ... }: {
  imports = [
    ./looks/cursor-theme.nix
    ./looks/gtk3-theme.nix
    ./looks/icon-theme.nix
  ];

  gtk.enable = true;

  dconf.settings = {
    "org/gnome/mutter" = {
      experimental-features = [ "scale-monitor-framebuffer" ];
    };
  };
}
