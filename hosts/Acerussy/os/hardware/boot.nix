{
  boot = {
    initrd = {
      availableKernelModules = [ "xhci_pci" "thunderbolt" "vmd" "nvme" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
    kernelParams = [ 
      # "i915.force_probe=!9a49"  # change driver to XE experimental
      # "xe.force_probe=9a49" 
    ];  
  };
}