{ pkgs, ... }: {
  imports = [
    ./software/gnome.nix
    ./software/flatpak.nix
    ./software/fonts.nix
    ./software/pipewire.nix
    ./software/resolved.nix
    ./software/virtualisation.nix
  ];

  environment.systemPackages = with pkgs; [
    blackbox-terminal  # terminal
    gnome-firmware     # firmware updates
  ];

  programs = {
    steam.enable = true;  # we gamin'
    fish.enable = true;   # shell
    git.enable = true;    # git (that's crazy)    
    nh.enable = true;
  };

  services = {
    fwupd.enable = true;     # firmware updates
    printing.enable = true;  # printing
    fstrim.enable = true;    # weekly SSD TRIM (I think)
  };
}
