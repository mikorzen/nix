{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$terminal" = "warp-terminal";
    "$fileManager" = "nautilus";
    "$browser" = "microsoft-edge";

    bind = [
      "$mainMod, T, exec, $terminal"
      "$mainMod, Q, killactive,"
      "$mainMod, M, exit,"
      "$mainMod, E, exec, $fileManager"
      "$mainMod, F, togglefloating,"
      "$mainMod, D, exec, wofi --show drun"
      "$mainMod, P, pseudo, # dwindle"
      "$mainMod, J, togglesplit, # dwindle"
      "$mainMod, B, exec, $browser"

      # Move focus with mainMod + arrow keys
      "$mainMod, left,  movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up,    movefocus, u"
      "$mainMod, down,  movefocus, d"

      # Moving windows
      "$mainMod SHIFT, left,  swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, up,    swapwindow, u"
      "$mainMod SHIFT, down,  swapwindow, d"

      # Window resizing                     X  Y
      "$mainMod CTRL, left,  resizeactive, -60 0"
      "$mainMod CTRL, right, resizeactive,  60 0"
      "$mainMod CTRL, up,    resizeactive,  0 -60"
      "$mainMod CTRL, down,  resizeactive,  0  60"

      # Switch workspaces with mainMod + [0-9]
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

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
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

      # # Scroll through existing workspaces with mainMod + scroll
      # "$mainMod, mouse_down, workspace, e+1"
      # "$mainMod, mouse_up, workspace, e-1"

      # # Keyboard backlight
      # "$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
      # "$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

      # # Volume and Media Control
      # ", XF86AudioRaiseVolume, exec, pamixer -i 5 "
      # ", XF86AudioLowerVolume, exec, pamixer -d 5 "
      # ", XF86AudioMute, exec, pamixer -t"
      # ", XF86AudioMicMute, exec, pamixer --default-source -m"
      
      # # Brightness control
      # ", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
      # ", XF86MonBrightnessUp, exec, brightnessctl set +5% "

      # # Configuration files
      # ''$mainMod SHIFT, N, exec, alacritty -e sh -c "rb"''
      # ''$mainMod SHIFT, C, exec, alacritty -e sh -c "conf"''
      # ''$mainMod SHIFT, H, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/hyprland.nix"''
      # ''$mainMod SHIFT, W, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/waybar.nix''
      # '', Print, exec, grim -g "$(slurp)" - | swappy -f -''

      # # Waybar
      # "$mainMod, B, exec, pkill -SIGUSR1 waybar"
      # "$mainMod, W, exec, pkill -SIGUSR2 waybar"

      # # Disable all effects
      # "$mainMod Shift, G, exec, ~/.config/hypr/gamemode.sh"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"      
    ];
  };
}