{ lib, config, pkgs, ... }: 
let
  cfg = config.mainUser;
in with lib; {
  options.mainUser = with types; {
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
    shell = mkOption {
      type = raw;
      description = "User's login shell";
    };
  };

  config.users.users.${cfg.username} = {
    isNormalUser = true;
    description = cfg.description;
    extraGroups = [ "wheel" ] ++ cfg.groups;
    shell = cfg.shell;
  };
}