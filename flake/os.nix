{ inputs, system, ... }: {
  "Acerussy" = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs system; };
    modules = [
      ../common/os.nix          # os configuration • common
      ../hosts/Acerussy/os.nix  # os configuration • Acerussy

      ../users/mikorzen/os.nix  # user definition  • mikorzen
    ];
  };

  "Computerussy" = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs system; };
    modules = [
      ../common/os.nix              # os configuration • common
      ../hosts/Computerussy/os.nix  # os configuration • Computerussy

      ../users/mikorzen/os.nix      # user definition  • mikorzen
    ];
  };
}
