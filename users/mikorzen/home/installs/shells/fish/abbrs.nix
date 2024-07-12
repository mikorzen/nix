{
  programs.fish.shellAbbrs = {
    # utils
    fd = "fd --hidden";
    find = "fd --hidden";

    eza = "eza --icons";
    ls = "eza --icons";
    la = "eza --icons -a";
    ll = "eza --icons -l";
    lt = "eza --icons -t";
    lla = "eza --icons -la";
    llt = "eza --icons -lt";
    lat = "eza --icons -at";
    llat = "eza --icons -lat";

    cat = "bat";
    du = "dust";
    rmt = "gio trash";


    # nix
    nos = "nh os switch";
    nhs = "nh home switch";
    nca = "nh clean all";


    # system
    wifi = "nmtui";
    bt = "blueman-manager";
    sus = "systemctl suspend";
  };
}
