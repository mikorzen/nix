{ pkgs, ... }: {
  home.packages = with pkgs; [
    ## audio
    gnome-sound-recorder  # recorder

    ## video
    clapper    # player
    kooha      # recorder
    parabolic  # downloader

    ## images
    curtail      # compressor
    gimp         # editor
    identity     # comparator
    letterpress  # image to ASCII art
    switcheroo   # manipulator

    ## documents
    gnome-frog   # OCR (image to text)
    morphosis    # converter
    paper-clip   # PDF metadata editor
    pdfarranger  # PDF manipulator

    ## text
    calligraphy  # text to ASCII art
    lorem        # placeholder text
    textpieces   # scratchpad
  ];
}
