{ pkgs, lib, ... }: {
  imports = [
    ./os/bootloader.nix
    ./os/envars.nix
    ./os/greetd.nix
    ./os/locale.nix
    ./os/mainUser.nix
    ./os/networking.nix
    ./os/programs.nix
    ./os/packages.nix
    ./os/security.nix
    ./os/services.nix
    ./os/sound.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  hardware.graphics.enable = true;

  mainUser = {
    username = "mikorzen";
    description = "Michał Korzeń";
    shell = pkgs.fish;
  };
}