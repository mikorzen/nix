{ pkgs, ... }: {
  imports = [
    ./software/upower.nix   # battery
  ];

  environment.systemPackages = with pkgs; [
    brightnessctl           # brightness control
  ];

  services = {
    # prevent shutdown on power key short-press
    logind.extraConfig = ''
      HandlePowerKey=ignore
    '';
    blueman.enable = true;  # Bluetooth control
  };
}
