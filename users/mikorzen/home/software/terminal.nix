{ pkgs, ... }: {
  imports = [
    ./terminal/bash.nix  # good ol'
    ./terminal/fish.nix  # fish shell
  ];

  home.packages = with pkgs; [
    (warp-terminal.override { waylandSupport = true; })
  ];

  programs = {
    oh-my-posh = {            # prompt
      enable = true;
      enableFishIntegration = false;
    };
    fastfetch.enable = true;  # info fetcher
  };
}
