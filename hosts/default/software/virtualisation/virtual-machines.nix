{ pkgs, ... }: {
  programs.virt-manager.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [ pkgs.OVMFFull.fd ];
      };
    };
  };

  environment.systemPackages = with pkgs; [
    qemu_kvm
    virtiofsd
  ];

  systemd.tmpfiles.rules = let
    firmware =
      pkgs.runCommandLocal "qemu-firmware" { } ''
        mkdir $out
        cp ${pkgs.qemu_kvm}/share/qemu/firmware/*.json $out
        substituteInPlace $out/*.json --replace ${pkgs.qemu_kvm} /run/current-system/sw
      '';
  in [ "L+ /var/lib/qemu/firmware - - - - ${firmware}" ];
}