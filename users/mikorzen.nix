{
  imports = [
    ./mikorzen/dotfiles.nix
    ./mikorzen/personalization.nix
    ./mikorzen/software.nix
  ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  home = rec {
    username = "mikorzen";
    homeDirectory = "/home/${username}";

    shell.enableShellIntegration = false;
    sessionVariables = {
      NH_FLAKE = "${homeDirectory}/.nix";
    };
    
    stateVersion = "25.05";  # don't touch unless know what you're doing
  };
}
