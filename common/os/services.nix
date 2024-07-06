{
  services = {
    printing.enable = true; # CUPS
    fstrim.enable = true; # Weekly SSD TRIM (I think)
    gvfs.enable = true; # Filesystem support for Nautilus (Trash, etc.)
    power-profiles-daemon.enable = true; # Power profiles
  };
}