local wezterm = require("wezterm")
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local tabline_config = {
	options = {
		tab_separators = {
			left = wezterm.nerdfonts.ple_upper_left_triangle,
			right = wezterm.nerdfonts.ple_upper_right_triangle,
		},
	},
	sections = {
		tabline_a = {},
		tabline_y = { "battery", "datetime" },
		tabline_z = {},
	},
}
tabline.setup(tabline_config)
