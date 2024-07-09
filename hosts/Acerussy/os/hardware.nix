# user-agnostic Acerussy-specific NixOS hardware configuration
{ config, lib, modulesPath, ... }: with lib; {
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
    ./hardware/bluetooth.nix
    ./hardware/boot.nix
    ./hardware/fileSystems.nix
  ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = mkDefault true;
  # networking.interfaces.wlp0s20f3.useDHCP = mkDefault true;

  nixpkgs.hostPlatform = mkDefault "x86_64-linux";

  hardware.cpu.intel.updateMicrocode = mkDefault config.hardware.enableRedistributableFirmware;
}