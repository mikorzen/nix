{
  programs.hyprlock.settings.label = [{
    monitor = "";

    text = "cmd[update:5000] echo \"<span font_weight='500'>$(date +'%H:%M')</span>\"";
    color = "rgba(255, 255, 255, 0.8)";
    font_size = 160;
    font_family = "Montserrat";

    shadow_passes = 2;
    shadow_size = 2;

    position = "0, 180";
    halign = "center";
    valign = "center";
  }];
}
