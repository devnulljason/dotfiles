if status is-interactive
    set -g fish_key_bindings fish_vi_key_bindings
end

# neovim is almost always installed, these don't have to be system-local
set -gx EDITOR /usr/bin/nvim
set -gx MANPAGER 'nvim +Man!'

starship init fish | source
