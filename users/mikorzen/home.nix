{  ## mikorzen-specific host-agnostic home-manager configuration
  imports = [
    ./home/dotfiles.nix
    ./home/look.nix
    ./home/scripts.nix
    ./home/software.nix
  ];

  home = rec {
    username = "mikorzen";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };

  nixpkgs.config.allowUnfree = true;
}
