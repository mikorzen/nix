{
  imports = [ 
    ./modules/bluetooth.nix
    ./modules/packages.nix
    ./modules/power.nix

    ./hardware-configuration.nix

    ../../nixos/default.nix
  ];

  networking.hostName = "Acerussy";

  system.stateVersion = "24.05"; # Do not change!
}
