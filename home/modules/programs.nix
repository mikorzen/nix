{ pkgs, ... }: {
  programs = {
    # terminal
    oh-my-posh.enable = true;
    fastfetch.enable = true;

    # editors
    vscode.enable = true;

    # dev
    bun = {
      enable = true;
      enableGitIntegration = true;
    };
  };
}