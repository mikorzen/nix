{ inputs, nixpkgs, system, ... }: {
  "Acerussy" = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs system; };
    modules = [
    ../common/os.nix                 # user-agnostic     host-agnostic     NixOS configuration
    ../hosts/Acerussy/hardware.nix   # user-agnostic     Acerussy-specific NixOS hardware configuration
    ../hosts/Acerussy/os.nix         # user-agnostic     Acerussy-specific NixOS configuration
    ../users/mikorzen/os.nix         # mikorzen-specific host-agnostic     NixOS configuration
    ];
  };

  "Computerussy" = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs system; };
    modules = [
      ../common/os.nix                     # user-agnostic     host-agnostic         NixOS configuration
      ../hosts/Computerussy/hardware.nix   # user-agnostic     Computerussy-specific NixOS hardware configuration
      ../hosts/Computerussy/os.nix         # user-agnostic     Computerussy-specific NixOS configuration
      ../users/mikorzen/os.nix             # mikorzen-specific host-agnostic         NixOS configuration
    ];
  };
}