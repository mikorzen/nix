{ pkgs, ... }: {
  home.packages = with pkgs; [
    wildcard  # regex tester
  ];

  programs = {
    git = {
      enable = true;
      userName = "mikorzen";
      userEmail = "michal.korzen-tech@pm.me";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    vscode.enable = true;
  };
}
