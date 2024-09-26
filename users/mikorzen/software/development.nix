{ pkgs, ... }: {
  imports = [
    ./development/git.nix
    ./development/java.nix
    ./development/javascript.nix
    ./development/python.nix
    ./development/vscode.nix
  ];

  home.packages = with pkgs; [
    pods      # podman (containers) GUI manager
    commit    # commit message editor
    wildcard  # regex tester
  ];
}
