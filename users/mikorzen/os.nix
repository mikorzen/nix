{ pkgs, config, ... }: {  ## mikorzen-specific host-agnostic NixOS configuration
  users.users."mikorzen" = {
    isNormalUser = true;
    hashedPassword = "$y$j9T$RFsu3.hEBnFVWBAHMVcNy0$CxIsxYX8Pmp8J/hQCZAEiSzJV8ZZZB.5N.1hFBX4.T5";
    description = "Michał Korzeń";
    extraGroups = [ "wheel" ];
    shell = pkgs.fish;
  };

  programs.nh.flake = "${config.users.users."mikorzen".home}/.nix/";
}
