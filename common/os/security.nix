{
  security = {
    rtkit.enable = true;   # needed for sound (pipewire)
    polkit.enable = true;
    pam.services.hyprlock = {};
  };
}
