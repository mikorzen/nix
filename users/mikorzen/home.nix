{ # mikorzen-specific host-agnostic home-manager configuration
  imports = [
    # ./home/ags.nix
    ./home/hypr.nix
    ./home/packages.nix
    ./home/programs.nix
    ./home/theme.nix
  ];

  home = {
    username = "mikorzen";
    homeDirectory = "/home/mikorzen";
    sessionVariables.FLAKE = "/home/mikorzen/.dotfiles/nix";
  };

  nixpkgs.config.allowUnfree = true;
}