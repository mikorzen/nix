{ pkgs, ... }: {
  programs = {
    bun = {
      enable = true;
      enableGitIntegration = true;
    };
  };
}
