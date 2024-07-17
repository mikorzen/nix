{ pkgs, ... }: {
  home.packages = with pkgs; [
    (writeShellApplication {
      name = "fix-audio";
      text = builtins.readFile ./fixAudio.sh;
      runtimeInputs = [ wireplumber ];
    })
  ];
}
