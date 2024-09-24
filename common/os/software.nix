{ inputs, pkgs, ... }: {
  imports = [
    ./software/gnome.nix
    ./software/flatpak.nix
    ./software/pipewire.nix
    ./software/resolved.nix
    ./software/virtualisation.nix
  ];

  environment.systemPackages = with pkgs; [
    inputs.umu.packages.${pkgs.system}.umu  # unifed linux wine game launcher
    blackbox-terminal  # terminal
    gnome-firmware     # firmware updates

  ];

  programs = {
    steam.enable = true;  # we gamin'
    fish.enable = true;   # shell
    git.enable = true;    # version control (that's crazy)
    nh.enable = true;     # nix helper
  };

  services = {
    printing.enable = true;  # printing
    fstrim.enable = true;    # weekly SSD TRIM (I think)
    fwupd.enable = true;     # firmware updates
  };
}
