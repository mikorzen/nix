{ # user-agnostic host-agnostic NixOS configuration
  imports = [
    ./os/boot.nix
    ./os/envars.nix
    ./os/input.nix
    ./os/locale.nix
    ./os/networking.nix
    ./os/security.nix
    ./os/software.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  hardware.graphics.enable = true;
}
