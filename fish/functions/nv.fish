function nv
    argparse --max-args=1 -- $argv
    set -f path $argv
    if test (count $argv) -lt 1
        set -f path (pwd)
    end

    kitty --detach --directory=$path nvim .
end
