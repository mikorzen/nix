{ pkgs, lib, ... }: {
  imports = [
    ./modules/bootloader.nix
    ./modules/envars.nix
    ./modules/greetd.nix
    ./modules/locale.nix
    ./modules/mainUser.nix
    ./modules/programs.nix
    ./modules/packages.nix
    ./modules/services.nix
    ./modules/sound.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  hardware.graphics.enable = true;
  networking.networkmanager.enable = true;

  mainUser = {
    username = "mikorzen";
    description = "Michał Korzeń";
    shell = pkgs.fish;
  };
}