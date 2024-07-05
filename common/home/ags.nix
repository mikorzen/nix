{ inputs, pkgs, ... }: {
  imports = [
    inputs.ags.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    # dart-sass
    # fd
    # brightnessctl
    # swww
    # hyprpicker
  ];

  programs.ags = {
    enable = true;
    configDir = null;
    extraPackages = with pkgs; [
      accountsservice
    ];
  };
}