{
  imports = [
    ./default/boot.nix
    ./default/envars.nix
    ./default/input.nix
    ./default/locale.nix
    ./default/networking.nix
    ./default/personalization.nix
    ./default/software.nix
    ./default/users.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
