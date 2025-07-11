local wezterm = require('wezterm')
local config = require('config')

local wezterm_config = wezterm.config_builder()
config.apply_all(wezterm_config)

return wezterm_config
