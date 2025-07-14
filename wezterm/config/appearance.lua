local module = {}

function module.apply(config)
	config.color_scheme = "Dracula (Official)"
	config.window_padding = {
		left = 2,
		right = 2,
		bottom = 2,
		top = 3,
	}
	config.window_decorations = "NONE"
	return config
end

return module
