{ pkgs, config,...}: 
let
  # theme = {
  #   name = "adw-gtk3-dark";
  #   package = pkgs.adw-gtk3;
  # };
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
  # iconTheme = {
  #   name = "MoreWaita";
  #   package = pkgs.morewaita-icon-theme;
  # };
in {
  home = {
    packages = with pkgs; [
      # theme.package
      cursorTheme.package
      hyprcursorTheme.package
      # iconTheme.package
      # gnome.adwaita-icon-theme
      # papirus-icon-theme
    ];
    sessionVariables = {
      XCURSOR_THEME = cursorTheme.name;
      XCURSOR_SIZE = "${toString cursorTheme.size}";
      HYPRCURSOR_THEME = hyprcursorTheme.name;
      HYPRCURSOR_SIZE = "${toString hyprcursorTheme.size}";
      # ADW_DISABLE_PORTAL = "1";
    };
    pointerCursor =
      cursorTheme
      // {
        # gtk.enable = true;
      };
    # file = {
    #   ".config/gtk-4.0/gtk.css".text = ''
    #     window.messagedialog .response-area > button,
    #     window.dialog.message .dialog-action-area > button,
    #     .background.csd{
    #       border-radius: 0;
    #     }
    #   '';
    # };
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
  };

  # gtk = {
  #   enable = true;
  #   inherit cursorTheme; # iconTheme;
  #   gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
  #   gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
  #   gtk3.extraCss = ''
  #     headerbar, .titlebar,
  #     .csd:not(.popup):not(tooltip):not(messagedialog) decoration{
  #       border-radius: 0;
  #     }
  #   '';
  # };

  # xdg.configFile = {
  #   "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
  #   "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
  #   "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  # };

  # qt = {
  #   enable = true;
  #   platformTheme.name = "kde";
  # };

  # home.file.".local/share/flatpak/overrides/global".text = let
  #   dirs = [
  #     "/nix/store:ro"
  #     "xdg-config/gtk-3.0:ro"
  #     "xdg-config/gtk-4.0:ro"
  #     "${config.xdg.dataHome}/icons:ro"
  #   ];
  # in ''
  #   [Context]
  #   filesystems=${builtins.concatStringsSep ";" dirs}
  # '';
}