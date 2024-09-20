{ # mikorzen-specific host-agnostic home-manager configuration
  imports = [
    ./home/installs.nix
    # ./home/theme.nix
  ];

  home = rec {
    username = "mikorzen";
    homeDirectory = "/home/${username}";
  };

  nixpkgs.config.allowUnfree = true;
}
