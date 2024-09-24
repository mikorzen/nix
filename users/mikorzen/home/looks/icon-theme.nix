{ pkgs, ... }:
let
  papirus = {
    name = "Papirus-Dark";
    package = pkgs.papirus-icon-theme;
  };
  morewaita = {
    name = "MoreWaita";
    package = pkgs.morewaita-icon-theme;
  };
in {
  gtk.iconTheme = papirus;
}
