{ pkgs, ... }: pkgs.writeShellApplication {
  name = "reorder-extensions";
  text = ''
    mapfile extensions -t < ~/.local/share/gnome-shell/extension-order.txt

    dconf write /org/gnome/shell/disabled-extensions "'[]'"
    dconf write /org/gnome/shell/enabled-extensions "'[]'"
    
    # shellcheck disable=SC2068
    for e in ''${extensions[@]}; do
        gnome-extensions enable "$e"
        sleep 0.05
    done  
  '';
}
