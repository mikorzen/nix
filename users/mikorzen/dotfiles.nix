{
  home.file.".nix" = {
    target = "fake/..";  # workaround to target the home directory itself
    source = ./dotfiles;
    recursive = true;
  };
}
