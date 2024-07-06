{ inputs, config, pkgs, ... }: {
  home = {
    sessionVariables = {
      RIP_GRAVEYARD = "${config.home.homeDirectory}/.local/share/Trash";  # rip2
    };

    packages = with pkgs; [
      inputs.rip2.packages.${system}.default  # rm alternative
      dust                                    # du alternative
    ];
  };
}