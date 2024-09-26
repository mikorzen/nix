{ pkgs, lib, ... }: let
  #! remember to reflect desirable changes in respective
  #! `./hosts/default/personalization/cursor-theme.nix`
  bibata = {
    package = pkgs.bibata-cursors;
    name = {
      modern = {
        amber = "Bibata-Modern-Amber";
        classic = "Bibata-Modern-Classic";
        ice = "Bibata-Modern-Ice";
      };
      original = {
        amber = "Bibata-Original-Amber";
        classic = "Bibata-Original-Classic";
        ice = "Bibata-Original-Ice";
      };
    };
  };
  oreo = {
    package = pkgs.oreo-cursors-plus;
    name = {
      border = {
        spark.black = "oreo_spark_black_bordered_cursors";
        spark.white = "oreo_spark_white_bordered_cursors";
      };
      no-border = {
        black = "oreo_black_cursors";
        white = "oreo_white_cursors";
      };
    };
  };
in {
  options.personalization.cursorTheme = with lib; {  #* default = selected cursor theme
    package = mkOption { type = types.package; default = bibata.package; };
    name = mkOption { type = types.str; default = bibata.name.modern.classic; };
    size = mkOption { type = types.int; default = 20; };  #! the type differs from os config
  };
}
