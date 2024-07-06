{ pkgs, ... }: 
let
  iconTheme = {
    name = "Adwaita";
    package = pkgs.gnome.adwaita-icon-theme;
  };
in { 
  home.packages = with pkgs; [ iconTheme.package ];
  gtk.iconTheme = iconTheme;
}