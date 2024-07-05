{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # session manager
    greetd.tuigreet

    # terminal
    (warp-terminal.override { waylandSupport = true; })  
    blackbox-terminal

    # file manager
    gnome.nautilus 

    # browser
    microsoft-edge     
  ];
}