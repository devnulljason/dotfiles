local wezterm = require("wezterm")
local module = {}

local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider -- ""

function module.apply(config)
	config.use_fancy_tab_bar = false
	config.tab_bar_at_bottom = true
	return config
end

local function tab_title(tab)
	local title = tab.tab_title
	if title and #title > 0 then
		if #title > 10 then
			return string.sub(title, 1, 7) .. "..."
		end
		return title
	end
	return tab.active_pane.title
end

local function powerline_tabs(tab, tabs, panes, config, hover, max_width)
	local title = tab_title(tab)
	local tab_colors = config.resolved_palette.tab_bar
	if tab.is_active then
		return {
			{ Text = SOLID_RIGHT_ARROW .. " " .. tab.tab_index + 1 .. " " .. title .. " " },
			{ Foreground = { Color = tab_colors.active_tab.bg_color } },
			{ Background = { Color = tab_colors.active_tab.fg_color } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	end
	if hover then
		return {
			{ Foreground = { Color = tab_colors.inactive_tab.bg_color } },
			{ Text = SOLID_RIGHT_ARROW .. " " },
			"ResetAttributes",
			{ Text = tab.tab_index + 1 .. " " .. title .. " " },
			{ Foreground = { Color = tab_colors.inactive_tab_hover.bg_color } },
			{ Background = { Color = tab_colors.inactive_tab.bg_color } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	end
	return {
		{ Text = "  " .. tab.tab_index + 1 .. " " .. title .. "  " },
	}
end

wezterm.on("format-tab-title", powerline_tabs)

return module
