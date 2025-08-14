function dev --description 'Open a file or folder in a dev environment'
    set -l _path $argv[1]

    if not test -d $_path
        set -l _path (dirname $_path)
    end

    DEV_ROOT=$_path kitty --detach --session sessions/dev.session
end
