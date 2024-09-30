{ config, ... }: {
  boot = {
    initrd = {
      availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-amd" "88x2bu" ];
    extraModulePackages = with config.boot.kernelPackages; [ rtl88x2bu ];
    kernelParams = [ ];
  };
}
