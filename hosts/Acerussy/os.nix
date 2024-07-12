{ # user-agnostic Acerussy-specific NixOS configuration
  imports = [
    ./os/hardware.nix
    ./os/software.nix
  ];

  networking.hostName = "Acerussy";

  system.stateVersion = "24.05"; # Do not change!
}
