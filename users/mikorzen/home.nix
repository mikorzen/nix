{ # mikorzen-specific host-agnostic home-manager configuration
  imports = [
    # ./home/ags.nix
    ./home/hypr.nix
    ./home/installs.nix
    ./home/theme.nix
  ];

  home = rec {
    username = "mikorzen";
    homeDirectory = "/home/${username}";
    sessionVariables.FLAKE = "${homeDirectory}/.nix";
  };

  nixpkgs.config.allowUnfree = true;
}
