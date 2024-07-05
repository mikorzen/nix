{
  services = {
    # xserver.enable = true;
    power-profiles-daemon.enable = true;
    printing.enable = true;
    fstrim.enable = true; # Weekly SSD TRIM (I think)
    # libinput.enable = true; # Touchpad support (present by default in most DMs)
    gvfs.enable = true; # Filesystem support for GNOME Nautilus
  };
}