{ pkgs, ... }: 
let
  gtk3Theme = {
    name = "adw-gtk3-dark";
    package = pkgs.adw-gtk3;
  };
in {
  home.packages = with pkgs; [ gtk3Theme.package ];
  gtk.theme.name = gtk3Theme.name;
}