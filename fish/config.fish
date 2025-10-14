if status is-interactive
    set -g fish_greeting
    set -g fish_key_bindings fish_vi_key_bindings
end

# neovim is almost always installed, these don't have to be system-local
if type -q nvim
    set -gx EDITOR (type -p nvim)
    set -gx MANPAGER 'nvim +Man!'
end

set -l _local_bin $HOME/.local/bin
if test -d $_local_bin
    fish_add_path $_local_bin
end
set -e _local_bin

if type -q starship
    starship init fish | source
end
