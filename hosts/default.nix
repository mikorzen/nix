{ inputs, modulesPath, pkgs, ... }: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    inputs.disko.nixosModules.disko

    ./default/boot.nix
    ./default/locale.nix
    ./default/miscellaneous.nix
    ./default/personalization.nix
    ./default/software.nix
  ];

  users.users."mikorzen" = {
    isNormalUser = true;
    hashedPassword = "$y$j9T$5FxSToqWxtmplEHCmr17q/$mElVnN8q0wc9kH1lHIvwouemtXaFM3hHdO4csNFh/U3";
    description = "Michał";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };

  environment.variables = {  # use wayland for electron apps
   QT_QPA_PLATFORM = "wayland";
   NIXOS_OZONE_WL = "1";
  };

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
