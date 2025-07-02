{ pkgs, ... }: let
  # temporary workaround due to a regression
  # that made ghostty unusable on 6.15.4 kernel
  ghostty = pkgs.ghostty.overrideAttrs (_: {
    preBuild = ''
      shopt -s globstar
      sed -i 's/^const xev = @import("xev");$/const xev = @import("xev").Epoll;/' **/*.zig
      shopt -u globstar
    '';
  });
in {
  imports = [
    ./software/audio.nix
    ./software/flatpak.nix
    ./software/gnome.nix
  ];

  environment.systemPackages = with pkgs; [
    dconf-editor
    ghostty         # terminal emulator
    gnome-firmware  # firmware updates
  ];

  programs = {
    command-not-found.enable = true;
    fish.enable = true;       # shell
    git.enable = true;        # version control (that's crazy)
    nh.enable = true;         # nix helper

    gamescope.enable = true;  # we gamin'
    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
  };

  services = {
    fwupd.enable = true;     # firmware updates
    printing.enable = true;  # printing
  };
}
