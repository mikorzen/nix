{ pkgs, ... }:
let
  font = {
    name = "Lato";
    package = pkgs.lato;
    size = 11;
  };
in {
  home.packages = [ font.package ];
  gtk.font = font;
}
