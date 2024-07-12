{
  imports = [
    ./hyprlock/background.nix
    ./hyprlock/date.nix
    ./hyprlock/input.nix
    ./hyprlock/time.nix
  ];

  programs.hyprlock = {
    enable = true;
    settings.general = {
      disable_loading_bar = true;
      ignore_empty_input = true;
      immediate_render = true;
    };
  };
}
