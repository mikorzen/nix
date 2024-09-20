{
  programs.fish.interactiveShellInit =
  ''
    set -g fish_greeting
    bind \b backward-kill-word
    bind \e\[3\;5~ kill-word
    oh-my-posh init fish --config $HOME/.config/oh-my-posh/themeussy.toml | source
  '';
}
