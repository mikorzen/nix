{ config, ... }: {
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


    # nix
    ncu = "nix-channel --update";
    nfu = "nix flake update";
    nos = "nh os switch";
    nhs = "nh home switch -b backup";
    nca = "nh clean all";

    # remove a backup of gtk.css that consistently blocks home-manager switch
    rmgb = "rm ${config.home.homeDirectory}/.config/gtk-4.0/gtk.css.backup";
  };
}
