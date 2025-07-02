{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = true;
        editor = false;
        consoleMode = "max";
        windows."11" = {
          title = "Windows 11";
          # efiDeviceHandle is set in host-specific config
          sortKey = "awindows";
        };
      };
      timeout = 10;
    };
    
    initrd.systemd.enable = true;

    # boot splash screen with logo
    plymouth.enable = true;      
    kernelParams = [ "quiet" ];
    consoleLogLevel = 0;
  };
}
