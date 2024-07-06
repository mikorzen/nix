{ inputs, nixpkgs, system, ... }: {
  "Acerussy" = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs system; };
    modules = [
      ../hosts/Acerussy.nix
    ];
  };

  "Computerussy" = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs system; };
    modules = [
      ../hosts/Computerussy.nix
    ];
  };
}