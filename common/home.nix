{
  imports = [
    ./home/ags.nix
    ./home/fish.nix
    ./home/git.nix
    ./home/hypr.nix
    ./home/packages.nix
    ./home/programs.nix
    ./home/theme.nix
    ./home/xdg.nix
  ];

  home = {
    username = "mikorzen";
    homeDirectory = "/home/mikorzen";
    sessionVariables.FLAKE = "/home/mikorzen/.dotfiles/nix";
    
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };

  programs.home-manager.enable = true;
}
