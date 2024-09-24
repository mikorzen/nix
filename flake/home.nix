{ inputs, system, ... }: {
  inputs.home-manager.backupFileExtension = "backup";

  "mikorzen@Acerussy" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix          # home configuration • common
      ../users/mikorzen/home.nix  # home configuration • mikorzen
    ];
  };

  "mikorzen@Computerussy" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix          # home configuration • common
      ../users/mikorzen/home.nix  # home configuration • mikorzen
    ];
  };
}
