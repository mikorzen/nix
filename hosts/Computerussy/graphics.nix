{ config, pkgs, ... }: {
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware = {
    graphics.enable = true;
    
    nvidia = {
      modesetting.enable = true;
      powerManagement = {
        enable = true;
        finegrained = false;
      };
      
      nvidiaSettings = true;
      
      package = config.boot.kernelPackages.nvidiaPackages.latest;
      open = true;
    };
  };
}
