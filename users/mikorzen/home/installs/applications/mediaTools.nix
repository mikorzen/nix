{ pkgs, ... }: {
  home.packages = with pkgs; [
    # video, recording
    obs-studio     # screen recorder
    kooha          # screen recorder
    clapper        # player
    parabolic      # downloader
    video-trimmer  # trimmer/editor
    # images, pictures
    switcheroo     # manipulator
    imagemagick    # switcheroo dependency
    curtail        # compressor
    identity       # comparator
    frog           # OCR (image to text)
    # audio
    decibels       # player
    # text
    textpieces     # text dev tool
    pdfarranger    # PDF manipulation
  ];
}
