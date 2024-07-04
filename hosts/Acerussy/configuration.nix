{
  imports = [ 
    ./hardware-configuration.nix
    ./modules/bluetooth.nix
    ./modules/power.nix
    ./modules/packages.nix
    ../../nixos/default.nix
  ];

  networking.hostName = "Acerussy";

  system.stateVersion = "24.05"; # Do not change!
}
