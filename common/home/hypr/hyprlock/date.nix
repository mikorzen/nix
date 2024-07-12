{
  programs.hyprlock.settings.label = [{
    monitor = "";

    text = "cmd[update:300000] echo \"<span font_weight='500'>$(date +'%A, %-e %B')</span>\"";
    color = "rgba(255, 255, 255, 0.8)";
    font_size = 50;
    font_family = "Montserrat";

    shadow_passes = 2;
    shadow_size = 1;

    position = "0, 30";
    halign = "center";
    valign = "center";
  }];
}
