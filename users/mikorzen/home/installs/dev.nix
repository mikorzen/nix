{ pkgs, ... }: {
  imports = [
    ./dev/git.nix     # version control
    ./dev/ruff.nix    # Python formatter+linter
  ];

  home.packages = with pkgs; [
    # Python
    python3
    python312Packages.pip
    uv
  ];

  programs = {
    # (Java/Type)Script
    bun = {
      enable = true;
      enableGitIntegration = true;
    };
  };
}
