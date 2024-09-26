{
  imports = [
    ./mikorzen/dotfiles.nix
    ./mikorzen/personalization.nix
    ./mikorzen/scripts.nix
    ./mikorzen/software.nix
  ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  home = rec {
    username = "mikorzen";
    homeDirectory = "/home/${username}";

    sessionVariables = {
      FLAKE = "${homeDirectory}/.nix";
    };

    stateVersion = "24.05";  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };
}
