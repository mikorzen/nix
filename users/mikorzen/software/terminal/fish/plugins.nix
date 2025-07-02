{ pkgs, ... }: with pkgs; {
  home.packages = [
    fishPlugins.autopair
    fishPlugins.fzf-fish
    fishPlugins.puffer
    fishPlugins.sponge
    fishPlugins.z
  ];

  programs.fish.plugins = [
    { name = "autopair"; inherit (fishPlugins.autopair) src; }
    { name = "fzf"; inherit (fishPlugins.fzf-fish) src; }
    { name = "puffer"; inherit (fishPlugins.puffer) src; }
    { name = "sponge"; inherit (fishPlugins.sponge) src; }
    { name = "z"; inherit (fishPlugins.z) src; }
  ];
}
