local wezterm = require("wezterm")
local module = {}

function module.apply(config)
	config.font = wezterm.font("Hasklug Nerd Font")
	config.font_size = 10.0

	return config
end

return module
