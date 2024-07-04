{
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

  networking.networkmanager.enable = true;

  mainUser = {
    enable = true;
    username = "mikorzen";
    description = "Michał Korzeń";
  };
}