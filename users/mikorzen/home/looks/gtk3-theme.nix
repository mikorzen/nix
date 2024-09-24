{ pkgs, ... }:
let
  adwaita = {
    name = "adw-gtk3-dark";
    package = pkgs.adw-gtk3;
  };
in {
  gtk.theme.name = adwaita.name;
}
