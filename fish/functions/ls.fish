# Have to duplicate the entire ls function just to add
# '--group-directories-first' to the options
function ls
    if not set -q __fish_ls_command
        set -g __fish_ls_command ls
        set -g __fish_ls_color_opt
        set -g __fish_ls_indicators_opt
        if command -sq colorls
            and command colorls -GF >/dev/null 2>/dev/null
            set -g __fish_ls_command colorls
            set -g __fish_ls_color_opt -G
            set -g __fish_ls_indicators_opt -F
        else
            for opt in --color=auto -G --color
                if command ls $opt / >/dev/null 2>/dev/null
                    set -g __fish_ls_color_opt $opt
                    break
                end
            end

            if command ls -F / >/dev/null 2>/dev/null
                set -g __fish_ls_indicators_opt -F
            end
        end
    end

    set -l indicators_opt
    isatty stdout
    and set -a indicators_opt $__fish_ls_indicators_opt

    test "$TERM_PROGRAM" = Apple_Terminal
    and set -lx CLICOLOR 1

    set -qx CLICOLOR_FORCE && not isatty stdout; and set __fish_ls_color_opt

    command $__fish_ls_command \
        $__fish_ls_color_opt \
        $indicators_opt \
        --group-directories-first \
        $argv
end
