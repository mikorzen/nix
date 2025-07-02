{ lib, config, modulesPath, ... }: {
  imports = [
    ./Computerussy/boot.nix
    ./Computerussy/disko.nix
    ./Computerussy/graphics.nix
  ];
  
  networking = {
    hostName = "Computerussy";
    useDHCP = lib.mkDefault true;
  };
  
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  system.stateVersion = "25.05";  # don't touch unless know what you're doing
}
