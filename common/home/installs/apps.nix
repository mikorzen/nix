{ inputs, pkgs, ... }: {
  imports = [
    inputs.ags.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    gnome.gnome-characters  # character map
    gnome.gnome-clocks      # clock
    gnome-calculator  # calculator
    font-manager      # self-explanatory
    snapshot  # camera
    hyprshot  # screenshots for Hyprland
    satty     # screenshot annotator
    loupe     # image viewer
    clipse    # clipboard manager
  ];

  programs = {
    vscode.enable = true;  # code editor
    ags = {                # shell/top bar
      enable = true;
      configDir = null;
    };
  };
}
