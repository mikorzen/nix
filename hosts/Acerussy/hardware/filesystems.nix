{
  fileSystems = {
    "/" = { 
      device = "/dev/disk/by-uuid/ed070091-447d-410f-b897-bc0066d048e4";
      fsType = "btrfs";
      options = [ "subvol=root" "compress=zstd" ];
    };
    "/home" = { 
      device = "/dev/disk/by-uuid/ed070091-447d-410f-b897-bc0066d048e4";
      fsType = "btrfs";
      options = [ "subvol=home" "compress=zstd" ];
    };
    "/nix" = { 
      device = "/dev/disk/by-uuid/ed070091-447d-410f-b897-bc0066d048e4";
      fsType = "btrfs";
      options = [ "subvol=nix" "compress=zstd" "noatime" ];
    };
    "/swap" = { 
      device = "/dev/disk/by-uuid/ed070091-447d-410f-b897-bc0066d048e4";
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
}