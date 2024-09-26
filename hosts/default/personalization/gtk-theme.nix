{ pkgs, lib, ... }: let
  #! remember to reflect desirable changes in respective
  #! `./users/<username>/personalization/gtk-theme.nix`
  adwaita = {
    package = pkgs.adw-gtk3;
    name = {
      light = "adw-gtk3";
      dark = "adw-gtk3-dark";
    };
  };
in {
  options.personalization.gtkTheme = with lib; {  #* default = selected gtk theme
    package = mkOption { type = types.package; default = adwaita.package; };
    name = mkOption { type = types.str; default = adwaita.name.dark; };
  };

  config.environment.systemPackages = [
    adwaita.package
  ];
}
