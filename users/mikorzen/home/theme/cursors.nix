{ pkgs, ... }: 
let
  cursors = {
    name = "Posy_Cursor_Black_125_175";
    size = 24;
    package = pkgs.posy-cursors;
    gtk.enable = true;
  };
  hyprcursors = {
    name = "Hypr_Posy_Cursor_Black";
    size = 24;
    package = pkgs.hyprcursor;
  };
in {
  home = {
    packages = with pkgs; [
      cursors.package
      hyprcursors.package
    ];
    sessionVariables = {
      XCURSOR_THEME = cursors.name;
      XCURSOR_SIZE = "${toString cursors.size}";
      HYPRCURSOR_THEME = hyprcursors.name;
      HYPRCURSOR_SIZE = "${toString hyprcursors.size}";
    };
    pointerCursor = cursors;
  };
}