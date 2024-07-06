{ # user-agnostic host-agnostic NixOS configuration
  imports = [
    ./os/bootloader.nix
    ./os/envars.nix
    ./os/locale.nix
    ./os/networking.nix
    ./os/programs.nix
    ./os/packages.nix
    ./os/security.nix
    ./os/services.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  hardware.graphics.enable = true;
}