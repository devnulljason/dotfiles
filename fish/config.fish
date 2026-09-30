if status is-interactive
    set fish_greeting ""
    set -g fish_key_bindings fish_vi_key_bindings
end

# neovim is almost always installed, these don't have to be system-local
if type -q nvim
    set -gx EDITOR (type -p nvim)
    set -gx MANPAGER 'nvim +Man!'
end

# allow for manwidth margins on viewports <110 cols
# round down to nearest multiple of 5 because I'm not a psychopath
set -l cols (tput cols)
set -gx MANWIDTH (math "min($cols-10-$cols%5, 100)")

set -l local_bin $HOME/.local/bin
if test -d $local_bin
    fish_add_path $local_bin
end

if type -q starship
    starship init fish | source
end
