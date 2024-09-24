{ pkgs, ... }:
let
  iconTheme = {
    name = "Adwaita";
    package = pkgs.morewaita-icon-theme;
  };
in {
  home.packages = with pkgs; [ iconTheme.package ];
  gtk.iconTheme = iconTheme;
}
