{ pkgs, ... }: {
  imports = [
    ./software/upower.nix   # battery
  ];

  environment.systemPackages = with pkgs; [
    brightnessctl           # brightness control
  ];

  services = {
    logind.extraConfig = ''
      HandlePowerKey=ignore  # prevent shutdown on power key short-press
    '';
    blueman.enable = true;  # Bluetooth control
  };
}
