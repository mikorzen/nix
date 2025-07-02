{ inputs, system, ... }: let
  defaults = {
    pkgs = import inputs.nixpkgs { inherit system; };
    extraSpecialArgs = { inherit inputs; };
  };
  mikorzenConfig = inputs.home-manager.lib.homeManagerConfiguration {
    inherit (defaults) pkgs extraSpecialArgs;
    modules = [ ../users/mikorzen.nix ];
  };
in {
  "mikorzen@Acerussy" = mikorzenConfig;
  "mikorzen@Computerussy" = mikorzenConfig;
}
