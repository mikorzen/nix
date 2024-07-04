{ config, lib, modulesPath, ... }: with lib; {
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot = {
    initrd = {
      availableKernelModules = [ "xhci_pci" "thunderbolt" "vmd" "nvme" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
  };

  fileSystems = {
    "/" = { 
      device = "/dev/disk/by-uuid/1d690e54-1dbb-4a22-9144-8c9493df6364";
      fsType = "btrfs";
      options = [ "subvol=root" "compress=zstd" ];
    };
    "/home" = { 
      device = "/dev/disk/by-uuid/1d690e54-1dbb-4a22-9144-8c9493df6364";
      fsType = "btrfs";
      options = [ "subvol=home" "compress=zstd" ];
    };
    "/nix" = { 
      device = "/dev/disk/by-uuid/1d690e54-1dbb-4a22-9144-8c9493df6364";
      fsType = "btrfs";
      options = [ "subvol=nix" "compress=zstd" "noatime" ];
    };
    "/swap" = { 
      device = "/dev/disk/by-uuid/1d690e54-1dbb-4a22-9144-8c9493df6364";
      fsType = "btrfs";
      options = [ "subvol=swap" "noatime" ];
    };
    "/boot" = { 
      device = "/dev/disk/by-uuid/F815-FDF5";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
  };

  swapDevices = [ { device = "/swap/swapfile"; } ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = mkDefault true;
  # networking.interfaces.wlp0s20f3.useDHCP = mkDefault true;

  nixpkgs.hostPlatform = mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = mkDefault config.hardware.enableRedistributableFirmware;
}
