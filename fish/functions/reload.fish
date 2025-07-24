function reload --description "Reload the user's fish configuration"
    set --function files
    # local conf.d
    set -a files $__fish_config_dir/conf.d/**/*.fish
    # system conf.d
    set -a files $__fish_sysconf_dir/conf.d/**/*.fish
    # local and system vendor configs
    set -a files $__fish_vendor_confdirs/**/*.fish
    # system-wide config files
    set -a files $__fish_sysconf_dir/config.fish
    # user config file
    set -a files $__fish_config_dir/config.fish

    for file in $files
        source $file
    end
end
