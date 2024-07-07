{ pkgs, ... }: {
  services.xserver.xkb.layout = "pl";
  # console = {
  #   packages = with pkgs; [ terminus_font ];
  #   font = "${pkgs.terminus_font}/share/consolefonts/ter-120n.psf.gz";
  #   keyMap = "pl";
  # };
  i18n.inputMethod.enabled = "ibus";
}