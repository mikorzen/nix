{ pkgs, ... }: {
  imports = [
    ./modules/bootloader.nix
    ./modules/locale.nix
    ./modules/sound.nix
    ./modules/services.nix
    ./modules/greetd.nix
    ./modules/programs.nix
    ./modules/mainUser.nix
    ./modules/envars.nix
    ./modules/packages.nix
  ];

  hardware.graphics.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # xdg.portal.extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];

  networking.networkmanager.enable = true;

  mainUser = {
    username = "mikorzen";
    description = "Michał Korzeń";
  };
}