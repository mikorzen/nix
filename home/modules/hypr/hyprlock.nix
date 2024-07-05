{
  imports = [
    ./hyprlock/background.nix
    ./hyprlock/date.nix
    ./hyprlock/input.nix
    ./hyprlock/time.nix
  ];

  programs.hyprlock.enable = true;
}