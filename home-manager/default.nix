{
  imports = [
    ./modules/ags.nix
    ./modules/fish.nix
    ./modules/hyprland.nix
    ./modules/packages.nix
    ./modules/theme.nix
  ];

  home = {
    username = "mikorzen";
    homeDirectory = "/home/mikorzen";
    
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };

  programs.home-manager.enable = true;
}