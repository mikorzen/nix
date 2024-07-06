{
  imports = [
    ./services/upower.nix   # battery
  ];

  services = {
    blueman.enable = true;  # for Bluetooth
  };
}