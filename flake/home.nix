{ inputs, system, ... }: {
  "mikorzen@Acerussy" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix          # user-agnostic     home-manager configuration
      ../users/mikorzen/home.nix  # mikorzen-specific home-manager configuration
    ];
  };

  "mikorzen@Computerussy" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix              # user-agnostic     home-manager configuration
      ../users/mikorzen/home.nix      # mikorzen-specific home-manager configuration
    ];
  };
}
