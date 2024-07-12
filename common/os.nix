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

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  hardware.graphics.enable = true;
}
