{
  programs.bash = {
    enable = true;
    # warpify bash
    bashrcExtra = ''
      printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash" }}\x9c'
    '';
  };
}
