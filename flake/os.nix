{ inputs, system, ... }: let
  defaults = {
    specialArgs = { inherit inputs system; };
    modules = [ ../hosts/default.nix ];
  };
  makeConfig = hostModule: inputs.nixpkgs.lib.nixosSystem (
    defaults // { modules = defaults.modules ++ hostModule; }
  );
in {
  "Acerussy" = makeConfig [ ../hosts/Acerussy.nix ];
  "Computerussy" = makeConfig [ ../hosts/Computerussy.nix ];
}
