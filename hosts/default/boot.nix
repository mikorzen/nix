{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
        consoleMode = "max";
      };
      efi.canTouchEfiVariables = true;
    };

    plymouth.enable = true;      # boot splash screen with logo
    kernelParams = [ "quiet" ];
    consoleLogLevel = 3;
  };
}
