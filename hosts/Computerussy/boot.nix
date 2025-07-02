{ config, ... }: {
  boot = {
    # https://github.com/NixOS/nixpkgs/blob/fe51d34885f7b5e3e7b59572796e1bcb427eccb1/nixos/modules/system/boot/loader/systemd-boot/systemd-boot.nix#L473
    loader.systemd-boot.windows."11".efiDeviceHandle = "FS0";

    initrd = {
      availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-amd" ];
    extraModulePackages = [ config.hardware.nvidia.package ];
  };
}
