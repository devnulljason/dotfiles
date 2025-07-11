local module = {}

function module.apply(config)
    config.color_scheme = 'Dracula (Official)'
    config.window_padding = {
        left = 5,
        right = 5,
        bottom = 5,
        top = 5,
    }
    return config
end

return module
