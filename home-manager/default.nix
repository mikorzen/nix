{
  imports = [
    ./modules/packages.nix
    ./modules/git.nix
    ./modules/fish.nix
    # ./modules/xdg.nix
    ./modules/theme.nix
    ./modules/hypr.nix
    ./modules/ags.nix
  ];

  home = {
    username = "mikorzen";
    homeDirectory = "/home/mikorzen";
    sessionVariables.FLAKE = "/home/mikorzen/.dotfiles/nix";
    
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };

  programs.home-manager.enable = true;
}