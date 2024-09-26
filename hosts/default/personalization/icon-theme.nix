{ pkgs, lib, ... }: let
  #! remember to reflect desirable changes in respective
  #! `./users/<username>/personalization/icon-theme.nix`
  papirus = {
    package = pkgs.papirus-icon-theme;
    name = {
      light = "Papirus-Light";
      dark = "Papirus-Dark";
    };
  };
  morewaita = {
    package = pkgs.morewaita-icon-theme;
    name.default = "MoreWaita";
  };
in {
  options.personalization.iconTheme = with lib; {  #* default = selected icon theme
    package = mkOption { type = types.package; default = papirus.package; };
    name = mkOption { type = types.str; default = papirus.name.dark; };
  };

  config.environment.systemPackages = [
    papirus.package
    morewaita.package
  ];
}
