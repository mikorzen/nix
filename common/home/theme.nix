{ pkgs, config,...}: 
let
  theme = {
    name = "adw-gtk3-dark";
    package = pkgs.adw-gtk3;
  };
  cursorTheme = {
    name = "Posy_Cursor_Black_125_175";
    size = 24;
    package = pkgs.posy-cursors;
  };
  hyprcursorTheme = {
    name = "Hypr_Posy_Cursor_Black";
    size = 24;
    package = pkgs.hyprcursor;
  };
  iconTheme = {
    name = "Adwaita";
    package = pkgs.gnome.adwaita-icon-theme;
  };
  font = {
    name = "Lato";
    package = pkgs.lato;
    size = 11;
  };
in {
  home = {
    packages = with pkgs; [
      theme.package
      cursorTheme.package
      hyprcursorTheme.package
      iconTheme.package
      font.package
    ];
    sessionVariables = {
      XCURSOR_THEME = cursorTheme.name;
      XCURSOR_SIZE = "${toString cursorTheme.size}";
      HYPRCURSOR_THEME = hyprcursorTheme.name;
      HYPRCURSOR_SIZE = "${toString hyprcursorTheme.size}";
    };
    pointerCursor =
      cursorTheme
      // {
        gtk.enable = true;
      };
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
  };

  gtk = {
    enable = true;

    theme.name = theme.name;
    inherit cursorTheme iconTheme font;

    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
  };
}