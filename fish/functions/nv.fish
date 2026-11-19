function nv
    argparse --max-args=1 -- $argv
    if test (count $argv) -lt 1
        set -f path (pwd)
    else
        set -f path (realpath $argv[1])
    end
    set -f config "$HOME/.config/kitty/nv/kitty.conf"

    KITTY_CONFIG_DIRECTORY=(dirname $config) \
        kitty --detach \
        --config=$config \
        --directory=$path \
        nvim .
end
