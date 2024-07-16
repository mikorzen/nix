let
  terminal = {
    name = "blackbox";
    class = "com.raggesilver.BlackBox";
  };
  fileManager = {
    name = "nautilus";
    class = "org.gnome.Nautilus";
  };
  browser = {
    name = "firefox";
    class = "firefox";
  };
in {
  wayland.windowManager.hyprland.settings = {
    "$mainScreen" = "eDP-1";
    "$mainMod" = "SUPER";

    "$terminal"      = terminal.name;
    "$terminalClass" = terminal.class;

    "$terminalBackup" = terminal.name;
    "$terminalBackupClass" = terminal.class;

    "$fileManager"      = fileManager.name;
    "$fileManagerClass" = fileManager.class;

    "$browser"      = browser.name;
    "$browserClass" = browser.class;

    bind = [
      # description (dependencies)
      "$mainMod, R, exec, ags -r \"App.toggleWindow('launcher')\""  # launch ags launcher

      "$mainMod, T, exec, hdrop -c $terminalClass $terminal"              # launch terminal (hdrop, blackbox-terminal)
      "$mainMod, Y, exec, hdrop -c $terminalBackupClass $terminalBackup"  # launch backup terminal (hdrop, blackbox-terminal)
      "$mainMod, E, exec, hdrop -c $fileManagerClass $fileManager"        # launch file manager (hdrop, nautilus)
      "$mainMod, B, exec, hdrop -c $browserClass $browser"                # launch browser (hdrop, firefox)
      "$mainMod, V, exec, blackbox -c clipse"  # launch clipboard manager (blackbox-terminal, clipse)

      "$mainMod, Q, killactive,"     # close (kill) active window
      "$mainMod, L, exec, hyprlock"  # lock screen (hyprlock)
      "$mainMod, K, exit,"           # exit the window manager

      "$mainMod, F, togglefloating,"         # toggle floating mode
      "$mainMod, P, pseudo, # dwindle"       # pseudo tiling mode
      "$mainMod, J, togglesplit, # dwindle"  # toggle split mode

      # Screenshotting (hyprshot, satty, wl-clipboard)
      ",      Print, exec, screenshot -t screen -d $mainScreen"
      "SHIFT, Print, exec, screenshot -t selection"
      "CTRL,  Print, exec, screenshot -t window"

      # Volume and Media Control (wireplumber)
      ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"
      ", XF86AudioMute,        exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

      # Move focus
      "$mainMod, left,  movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up,    movefocus, u"
      "$mainMod, down,  movefocus, d"

      # Move windows
      "$mainMod SHIFT, left,  swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, up,    swapwindow, u"
      "$mainMod SHIFT, down,  swapwindow, d"

      # Resize window                       X  Y
      "$mainMod CTRL, left,  resizeactive, -60 0"
      "$mainMod CTRL, right, resizeactive,  60 0"
      "$mainMod CTRL, up,    resizeactive,  0 -60"
      "$mainMod CTRL, down,  resizeactive,  0  60"

      # Minimize active window (only one at a time)
      "$mainMod, M, togglespecialworkspace, minimized"
      "$mainMod, M, movetoworkspace, +0"
      "$mainMod, M, togglespecialworkspace, minimized"
      "$mainMod, M, movetoworkspace, special:minimized"
      "$mainMod, M, togglespecialworkspace, minimized"

      # Switch workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # Move active window to a workspace
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      # Scroll through existing workspaces
      "$mainMod, mouse_down, workspace, e-1"
      "$mainMod, mouse_up,   workspace, e+1"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}
