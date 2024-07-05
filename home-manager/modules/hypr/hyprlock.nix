{
  imports = [
    ./hyprlock/background.nix
    ./hyprlock/time.nix
    ./hyprlock/date.nix
    ./hyprlock/input.nix
  ];

  programs.hyprlock.enable = true;
}