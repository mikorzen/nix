{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    blackbox-terminal     # terminal

    pkgs.greetd.tuigreet  # login manager
    gnome.nautilus        # file manager
    firefox               # browser
  ];
}