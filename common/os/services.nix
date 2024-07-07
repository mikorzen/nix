{
  imports = [
    ./services/greetd.nix    # greeter
    ./services/pipewire.nix  # sound
    ./services/resolved.nix  # DNS
  ];

  services = {
    printing.enable = true;
    fstrim.enable = true;    # weekly SSD TRIM (I think)
    gvfs.enable = true;      # filesystem support for Nautilus (Trash, etc.)
    power-profiles-daemon.enable = true;
  };
}