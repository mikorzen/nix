{
  programs = {
    eza = {             # ls alternative
      enable = true;
      enableBashIntegration = false;
      enableFishIntegration = false;
    };
    bat.enable = true;  # cat alternative
    fd = {              # find alternative
      enable = true;
      hidden = true;
    };
    # fzf = {
    #   enable = true;
    #   enableBashIntegration = false;
    #   enableFishIntegration = false;
    # };
  };
}