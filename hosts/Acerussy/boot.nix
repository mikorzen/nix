{
  boot = {
    initrd = {
      enable = true;
      systemd.enable = true;
      availableKernelModules = [ "xhci_pci" "thunderbolt" "vmd" "nvme" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
    kernelParams = [
      "i915.enable_guc=3"
      ## change driver to XE experimental
      # "i915.force_probe=!9a49"
      # "xe.force_probe=9a49"
    ];
  };
}
