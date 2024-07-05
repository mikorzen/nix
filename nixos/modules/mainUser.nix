{ lib, config, pkgs, ... }: with lib;
let
  cfg = config.mainUser;
in {
  options.mainUser = with types; {
    # enable = mkEnableOption "Enable main user";
    username = mkOption {
      type = str;
      description = "Username";
    };
    description = mkOption {
      type = str;
      description = "Main user description/full name";
    };
    groups = mkOption {
      type = listOf str;
      description = "Groups to add main user to";
      default = [ ];
    };
    # packages = mkOption {
    #   type = listOf raw;
    #   description = "Main user-specific packages";
    #   default = [ ];
    # };
  };

  config.users.users.${cfg.username} = {
    isNormalUser = true;
    description = cfg.description;
    extraGroups = [ "wheel" ] ++ cfg.groups;
    # packages = with pkgs; [ ] ++ cfg.packages;
    shell = pkgs.fish;
  };
}