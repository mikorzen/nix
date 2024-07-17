{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/5ec20f88-6d2a-4d99-b36e-d9f6544df727";
      fsType = "btrfs";
      options = [ "subvol=root" "compress=lzo" "noatime" ];
    };
    "/home" = {
      device = "/dev/disk/by-uuid/5ec20f88-6d2a-4d99-b36e-d9f6544df727";
      fsType = "btrfs";
      options = [ "subvol=home" "compress=lzo" "noatime" ];
    };
    "/nix" = {
      device = "/dev/disk/by-uuid/5ec20f88-6d2a-4d99-b36e-d9f6544df727";
      fsType = "btrfs";
      options = [ "subvol=nix" "compress=lzo" "noatime" ];
    };
    "/swap" = {
      device = "/dev/disk/by-uuid/5ec20f88-6d2a-4d99-b36e-d9f6544df727";
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
