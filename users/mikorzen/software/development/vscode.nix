{
  programs.vscode.enable = true;

  xdg.desktopEntries = {  # workaround for duplicate VSCode desktop entries
    "code" = {
      name = "Visual Studio Code";
      genericName = "Text Editor";
      comment = "Code Editing. Redefined.";
      exec = "code";
      icon = "vscode";
      type = "Application";
      startupNotify = false;
      categories = [ "Utility" "TextEditor" "Development" "IDE" ];
      settings = {
        StartupWMClass = "code-url-handler";
      };
    };
  };
}
