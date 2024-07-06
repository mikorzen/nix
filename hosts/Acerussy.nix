{
  imports = [
    ../common/os.nix          # user-agnostic     host-agnostic     NixOS configuration

    ./Acerussy/hardware.nix   # user-agnostic     Acerussy-specific NixOS hardware configuration
    ./Acerussy/os.nix         # user-agnostic     Acerussy-specific NixOS configuration

    ../users/mikorzen/os.nix  # mikorzen-specific host-agnostic     NixOS configuration
  ];
}