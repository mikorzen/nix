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
      wifi = "nmtui";
      bt = "blueman-manager";
    };
    functions = {
      nixs = {
        argumentNames = "hostname";
        body = ''
          set -q hostname[1]; or set hostname eval (hostname)
          sudo nixos-rebuild switch --flake $HOME/.dotfiles/nix#$hostname
        '';
      };
      hms = {
        argumentNames = [ "username" "hostname" ];
        body = ''
          set -q username[1]; or set username $USER
          set -q hostname[1]; or set hostname eval (hostname)
          home-manager switch --flake $HOME/.dotfiles/nix#$username@$hostname
        '';
      };
    };
  };
}