{  ## user-agnostic host-agnostic home-manager configuration
  imports = [
    ./home/software.nix
  ];

  programs.home-manager.enable = true;
}
