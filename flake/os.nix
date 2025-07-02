{ inputs, system, ... }: let
  defaults = {
    specialArgs = { inherit inputs system; };
    modules = [ ../hosts/default.nix ];
  };
  mkOsConfig = hostModule: inputs.nixpkgs.lib.nixosSystem (
    defaults // { modules = defaults.modules ++ hostModule; }
  );
in {
  "Acerussy" = mkOsConfig [ ../hosts/Acerussy.nix ];
  "Computerussy" = mkOsConfig [ ../hosts/Computerussy.nix ];
}
