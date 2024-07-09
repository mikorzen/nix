{ lib, ... }: {
  environment.variables = {
    QT_QPA_PLATFORM = "wayland";
    NIXOS_OZONE_WL = "1";  # use wayland for Electron apps
  };
}
