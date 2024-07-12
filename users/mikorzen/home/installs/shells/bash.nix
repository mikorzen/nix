{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash" }}\x9c'
    '';
  };
}
