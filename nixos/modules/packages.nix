{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    wget
    greetd.tuigreet    # session manager
    (warp-terminal.override { waylandSupport = true; })  # terminal
    blackbox-terminal  # terminal
    microsoft-edge     # browser
    gnome.dconf-editor
  ];
}