{ pkgs, ... }: {
  home.packages = with pkgs; [
    (writeShellApplication {
      name = "screenshot";
      text = builtins.readFile ./screenshot.sh;
      runtimeInputs = [ hyprshot satty wl-clipboard ];
    })
  ];
}