{ # user-agnostic host-agnostic home-manager configuration
  imports = [
    ./home/dotfiles.nix
    ./home/installs.nix
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "24.05";  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
}
