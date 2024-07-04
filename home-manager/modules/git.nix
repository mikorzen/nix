{
  programs.git = {
    enable = true;
    userName = "mikorzen";
    userEmail = "michal.korzen@proton.me";
    extraConfig = {
      credential.helper = "oauth";
    };
  };
}