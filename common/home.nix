# user-agnostic host-agnostic home-manager configuration
{ pkgs, ... }: { 
  imports = [
    # ./home/ags.nix
    ./home/hypr.nix
    ./home/packages.nix
    ./home/programs.nix
  ];

  programs.home-manager.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  home.stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
}
