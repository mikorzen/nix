help() {
    echo "Usage: screenshot [OPTIONS]"
    echo "Options:"
    echo "  -t, --target TARGET    Target to capture. Valid values: [screen|window|selection]"
    echo "  -d, --display DISPLAY  Code of display to capture. Applies only to screen target. Use \`hyprctl monitors\` to get codes of available displays."
    echo "  -h, --help             Display this help message"
    exit 0
}

SHORT_ARGS=t:d:h
LONG_ARGS=target:,display:,help
OPTIONS=$(getopt -o $SHORT_ARGS -l $LONG_ARGS -- "$@")

if [ "$#" -lt 2 ]; then  # If the number of arguments is less than 2, display help
  help                   # (there is always 1 argument by default, so, in effect, if it's less than 1)
fi

eval set -- "$OPTIONS"

while true; do
    case "$1" in
        -t | --target )
            target=$2
            shift 2
            ;;
        -d | --display )
            display=$2
            shift 2
            ;;
        -h | --help )
            help
            ;;
        -- )
            shift
            break
            ;;
        * )
            echo "Unexpected option: $1"
            help
            ;;

    esac
done

case $target in
    screen )
        if [ -z ${display+x} ]; then  # ${VAR+x} is a parameter expansion that checks if the variable is set
            echo "Code of display to capture required. Use \`hyprctl monitors\` to get codes of available displays."
            echo "Example: screenshot -t screen -d DP-1"
            exit 1
        fi
        target="-m output -m $display"
        ;;
    window )
        target="-m window"
        ;;
    selection )
        target="-m region"
        ;;
    * )
        echo "Invalid target: $target"
        exit 1
        ;;
esac

outpath="$XDG_PICTURES_DIR/Screenshots"
mkdir -p "$outpath"
timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
# shellcheck disable=SC2086
filepath=$(hyprshot $target -o "$outpath" -f "$timestamp".png -- echo || true)
satty --filename "$filepath"  # config at $XDG_CONFIG_HOME/satty/config.toml or
                              # $HOME/.nix/dotfiles/.config/satty/config.toml for NixOS