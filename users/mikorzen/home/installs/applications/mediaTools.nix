{ pkgs, ... }: {
  home.packages = with pkgs; [
    # video, recording
    kooha          # screen recorder
    clapper        # player
    parabolic      # downloader
    video-trimmer  # trimmer/editor
    # images, pictures
    switcheroo     # manipulator
    curtail        # compressor
    identity       # comparator
    gnome-frog     # OCR (image to text)
    gimp           # editor
    # audio
    decibels       # player
    # text
    textpieces     # text dev tool
    pdfarranger    # PDF manipulation
  ];
}
