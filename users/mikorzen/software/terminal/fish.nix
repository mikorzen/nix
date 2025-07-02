{ config, ... }: {
  imports = [
    ./fish/abbrs.nix
    ./fish/plugins.nix
  ];

  programs.fish = {
    enable = true;
    interactiveShellInit =
    ''
      set -g fish_greeting
      bind \b backward-kill-word
      bind \e\[3\;5~ kill-word
      oh-my-posh init fish --config ${config.home.homeDirectory}/.config/oh-my-posh/themeussy.toml | source
    '';
  };
}
