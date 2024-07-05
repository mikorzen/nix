{
  imports = [
    ./modules/ags.nix
    ./modules/fish.nix
    ./modules/git.nix
    ./modules/hypr.nix
    ./modules/packages.nix
    ./modules/programs.nix
    ./modules/theme.nix
    ./modules/xdg.nix
  ];

  home = {
    username = "mikorzen";
    homeDirectory = "/home/mikorzen";
    sessionVariables.FLAKE = "/home/mikorzen/.dotfiles/nix";
    
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };

  programs.home-manager.enable = true;
}
