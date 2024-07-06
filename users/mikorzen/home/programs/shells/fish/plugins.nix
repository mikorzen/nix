{ pkgs, ... }: with pkgs; { 
  home.packages = [
    fishPlugins.autopair
    fishPlugins.fzf-fish
    fishPlugins.puffer
    fishPlugins.sponge
    fishPlugins.z
  ];

  programs.fish.plugins = [
    { name = "autopair"; src = fishPlugins.autopair.src; }
    { name = "fzf"; src = fishPlugins.fzf-fish.src; }
    { name = "puffer"; src = fishPlugins.puffer.src; }
    { name = "sponge"; src = fishPlugins.sponge.src; }
    { name = "z"; src = fishPlugins.z.src; }
  ];
}