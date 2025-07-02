{ config, ... }: {
  programs.fish.shellAbbrs = {
    ## nix
    ncu = "nix-channel --update";
    sncu = "sudo nix-channel --update";
    nfu = "nix flake update --flake $NH_FLAKE";
    snfu = "sudo nix flake update --flake $NH_FLAKE";
    nos = "nh os switch --ask";
    nhs = "nh home switch --ask";
    nca = "nh clean all --ask";
    nixconf = {
      expansion = "${config.home.homeDirectory}/.nix";
      position = "anywhere";
    };


    ## utils
    fd = "fd --hidden";
    find = "fd --hidden";

    eza = "eza --icons -F";
    ls = "eza --icons -F";
    la = "eza --icons -aF";
    ll = "eza --icons -lF";
    lt = "eza --icons -FT";
    lla = "eza --icons -laF";
    llt = "eza --icons -lFT";
    lat = "eza --icons -aFT";
    llat = "eza --icons -laFT";

    cat = "bat";
    du = "dust";
  };
}
