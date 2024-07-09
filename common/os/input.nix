{ pkgs, ... }: {
  services.xserver.xkb.layout = "pl";
  
  console = {
    font = "${pkgs.terminus_font}/share/consolefonts/ter-v20b.psf.gz";
    colors = [
      ## comment: [name for tuigreet/ratatui] [alternatives]*
      # background
      "101216"  # black
      "1d2028"  # red (but umm, akshually lighter black)
      "a2cb7f"  # green 
      "ebcb8b"  # yellow
      "81a1c1"  # blue
      "b48ead"  # magenta
      "8fbcbb"  # cyan 
      "8fbcbb"  # gray (used as the actual default color in tty - so should be white'ish)
      # foreground
      "4c566a"  # darkgray (doesn't seem to work)
      "d94755"  # lightred
      "a2cb7f"  # lightgreen 
      "ebcb8b"  # lightyellow 
      "81a1c1"  # lightblue
      "b48ead"  # lightmagenta
      "8fbcbb"  # lightcyan
      "eceff4"  # white
    ];
  }
  
  # i18n.inputMethod.enabled = "ibus";  # for emoji input and whatnot (doesn't work idk why)
}