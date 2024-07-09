{ # user-agnostic host-agnostic home-manager configuration
  imports = [
    # ./home/ags.nix
    ./home/dotfiles.nix
    ./home/hypr.nix
    ./home/installs.nix
    ./home/scripts.nix
    ./home/xdg.nix
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
}
