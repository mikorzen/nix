{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -g fish_greeting
      bind \b backward-kill-word
      bind \e\[3\;5~ kill-word
      oh-my-posh init fish --config $HOME/.config/oh-my-posh/themeussy.toml | source
      fastfetch
    '';
    shellAbbrs = {
      nos = "nh os switch";
      nhs = "nh home switch";
      wifi = "nmtui";
      bt = "blueman-manager";
    };
  };
}