{
  imports = [
    ./dev/git.nix          # version control
  ];

  programs = {
    bun = {                # JS dev
      enable = true;
      enableGitIntegration = true; 
    };
  };
}