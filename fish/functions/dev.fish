function dev --description 'Open a file or folder in a dev environment'
    set -l _path $argv[1]

    if not test -d $_path
        set -l _path (dirname $_path)
    end

    kitty --detach --session sessions/dev.session --directory $_path
end
