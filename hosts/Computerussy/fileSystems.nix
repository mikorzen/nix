{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/3ab5f9c6-b425-4586-9287-14553224295c";
      fsType = "btrfs";
      options = [ "subvol=root" "compress=lzo" "noatime" ];
    };
    "/home" = {
      device = "/dev/disk/by-uuid/3ab5f9c6-b425-4586-9287-14553224295c";
      fsType = "btrfs";
      options = [ "subvol=home" "compress=lzo" "noatime" ];
    };
    "/swap" = {
      device = "/dev/disk/by-uuid/3ab5f9c6-b425-4586-9287-14553224295c";
      fsType = "btrfs";
      options = [ "subvol=swap" "noatime" ];
    };
    "/boot" = {
      device = "/dev/disk/by-uuid/5827-C846";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
  };

  swapDevices = [ { device = "/swap/swapfile"; } ];
}
