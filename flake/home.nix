{ inputs, nixpkgs, system, home-manager, ... }: {
  "mikorzen@Acerussy" = home-manager.lib.homeManagerConfiguration {
    pkgs = import nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix          # user-agnostic     host-agnostic     home-manager configuration
      ../hosts/Acerussy/home.nix  # user-agnostic     Acerussy-specific home-manager configuration
      ../users/mikorzen/home.nix  # mikorzen-specific host-agnostic     home-manager configuration
    ];
  };

  "mikorzen@Computerussy" = home-manager.lib.homeManagerConfiguration {
    pkgs = import nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix              # user-agnostic     host-agnostic         home-manager configuration
      ../hosts/Computerussy/home.nix  # user-agnostic     Computerussy-specific home-manager configuration
      ../users/mikorzen/home.nix      # mikorzen-specific host-agnostic         home-manager configuration
    ];
  };
}