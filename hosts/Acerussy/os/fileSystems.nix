{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/d5dd4fb1-c05d-4f74-a9f4-1e21ab4ebc5b";
      fsType = "btrfs";
      options = [ "subvol=root" "compress=lzo" "noatime" ];
    };
    "/home" = {
      device = "/dev/disk/by-uuid/d5dd4fb1-c05d-4f74-a9f4-1e21ab4ebc5b";
      fsType = "btrfs";
      options = [ "subvol=home" "compress=lzo" "noatime" ];
    };
    "/swap" = {
      device = "/dev/disk/by-uuid/d5dd4fb1-c05d-4f74-a9f4-1e21ab4ebc5b";
      fsType = "btrfs";
      options = [ "subvol=swap" "noatime" ];
    };
    "/boot" = {
      device = "/dev/disk/by-uuid/3AD1-765E";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
  };

  swapDevices = [ { device = "/swap/swapfile"; } ];
}
