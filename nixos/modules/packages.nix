{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    wget
    greetd.tuigreet
    warp-terminal
    microsoft-edge
  ];
}