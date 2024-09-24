{ pkgs, ... }: {
  nixpkgs.overlays = [
    (final: prev: {  # this overlay makes the script available everywhere through pkgs.reorder-extensions
      reorder-extensions = prev.callPackage ./scripts/reorder-extensions.nix {};
    })
  ];

  home.packages = with pkgs; [
    reorder-extensions
  ];
}