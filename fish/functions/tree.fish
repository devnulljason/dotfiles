function tree --description "Displays contents of a directory and its subdirectories"
    set -l tree_command (command -s tree)
    set -l default_args -CF --dirsfirst --noreport --opt-toggle
    command $tree_command $default_args $argv
end
