{ pkgs, ... }: {
  home.packages = with pkgs; [
    ## audio
    gnome-sound-recorder  # recorder
    decibels              # player

    ## video
    parabolic  # downloader
    clapper    # player
    kooha      # recorder

    ## images
    letterpress  # image to ASCII art
    switcheroo   # manipulator
    identity     # comparator
    curtail      # compressor
    gimp         # editor

    ## documents
    pdfarranger  # PDF manipulator
    paper-clip   # PDF metadata editor
    gnome-frog   # OCR (image to text)
    morphosis    # converter

    ## text
    calligraphy  # text to ASCII art
    apostrophe   # markdown editor
    textpieces   # scratchpad
    lorem        # placeholder text
  ];
}
