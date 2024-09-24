{ pkgs, ... }:
let
  bibata = {
    name = "Bibata-Modern-Classic";
    size = 20;
    package = pkgs.bibata-cursors;
  };
  oreo = {
    name = "Oreo_spark_black_bordered_cursors";
    size = 20;
    package = pkgs.oreo-cursors-plus;
  };
in {
  gtk.cursorTheme = bibata;
}
