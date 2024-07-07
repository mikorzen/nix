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

  outputs = inputs @ { nixpkgs, home-manager, ... }: let 
    system = "x86_64-linux";
  in { 
    nixosConfigurations = import ./flake/os.nix { inherit inputs nixpkgs system; };
    homeConfigurations  = import ./flake/home.nix { inherit inputs nixpkgs system home-manager; };
  };
}