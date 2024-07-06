{ pkgs, ... }: 
let
  font = {
    name = "Lato";
    package = pkgs.lato;
    size = 11;
  };
in {
  home.packages = with pkgs; [ font.package ];
  gtk.font = font;
}