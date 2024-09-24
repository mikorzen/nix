{
  home.file.".nix" = {
    target = "fake/..";  # Wourkaround to target the home directory itself
    source = ./dotfiles;
    recursive = true;
  };
}
