{ pkgs, ... }: {
  home.packages = with pkgs; [
    dust  # `du` alternative
  ];

  programs = {
    eza = {                # `ls` alternative
      enable = true;
      enableBashIntegration = false;
      enableFishIntegration = false;
    };
    bat.enable = true;     # `cat` alternative
    fd = {                 # `find` alternative
      enable = true;
      hidden = true;
    };
  };
}
