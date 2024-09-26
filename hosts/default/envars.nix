{
  environment.variables = {  ## use wayland for Electron apps
    QT_QPA_PLATFORM = "wayland";
    NIXOS_OZONE_WL = "1";
  };
}