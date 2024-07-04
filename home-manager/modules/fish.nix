{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -g fish_greeting
      bind \b backward-kill-word
      bind \e\[3\;5~ kill-word
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