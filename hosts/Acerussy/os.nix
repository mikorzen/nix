{
  imports = [ 
    ../../common/os.nix

    ./os/bluetooth.nix
    ./os/packages.nix
    ./os/power.nix
  ];

  networking.hostName = "Acerussy";

  system.stateVersion = "24.05"; # Do not change!
}
