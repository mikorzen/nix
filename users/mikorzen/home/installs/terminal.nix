{
  imports = [
    ./terminal/bash.nix  # good ol'
    ./terminal/fish.nix  # fish shell
  ];

  programs = {
    oh-my-posh = {            # prompt
      enable = true;
      enableFishIntegration = false;
    };
    fastfetch.enable = true;  # info fetcher
  };
}
