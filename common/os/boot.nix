{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
    };

    # initrd = {
    #   enable = true;
    #   systemd.enable = true;
    # };

    # plymouth.enable = true;      # boot splash screen with logo
    # kernelParams = [ "quiet" ];
    # consoleLogLevel = 3;
  };
}
