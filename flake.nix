{
  description = "NixOS config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags = {
      url = "github:Aylur/ags";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rip2 = {
      url = "github:MilesCranmer/rip2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
  in {
    # NixOS config (Acerussy | Computerussy – hosts)
    nixosConfigurations = {
      Acerussy = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        modules = [
          ./hosts/Acerussy.nix
        ];
      };
      Computerussy = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        modules = [
          ./hosts/Computerussy.nix
        ];
      };
    };

    # HomeManager, user config
    homeConfigurations = {
      "mikorzen@Acerussy" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./users+hosts/mikorzen+Acerussy.nix
        ];
      };
      "mikorzen@Computerussy" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./users+hosts/mikorzen+Computerussy.nix
        ];
      };
    };
  };
}
