{ pkgs, ... }: {
  imports = [
    ./software/upower.nix   # battery
  ];

  environment.systemPackages = with pkgs; [
    brightnessctl           # brightness control
  ];

  services = {
    blueman.enable = true;  # Bluetooth control
  };
}
