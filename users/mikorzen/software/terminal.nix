{ pkgs, ... }: {
  imports = [
    ./terminal/fish.nix  # shell
  ];

  programs = {
    fastfetch.enable = true;   # info fetcher
    oh-my-posh.enable = true;  # prompt

    bat.enable = true;  # `cat`  alternative
    eza.enable = true;  # `ls`   alternative
    fd = {              # `find` alternative
      enable = true;
      hidden = true;
    };
    fzf.enable = true;
  };

  home.packages = with pkgs; [
    dust  # `du` alternative
  ];
}
