{
  imports = [
    ./gnome/exclusions.nix
    ./gnome/gsconnect.nix
    ./gnome/mutter-3x-buffering-patch.nix
  ];

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
}