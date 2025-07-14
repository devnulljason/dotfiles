local wezterm = require("wezterm")
local module = {}

local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider -- ""
local EMPTY_RIGHT_ARROW = wezterm.nerdfonts.pl_left_soft_divider -- ""

function module.apply(config)
	config.use_fancy_tab_bar = false
	config.tab_bar_at_bottom = true
	return config
end

local function format_tab_title(tab, max_width)
	local title = tab.tab_title
	local title_width = max_width - 5
	if title and #title > 0 then
		return wezterm.truncate_right(title, title_width)
	end
	return tab.active_pane.title
end

local function powerline_tabs(tab, tabs, panes, config, hover, max_width)
	local title = format_tab_title(tab, max_width)
	local active_bg = config.resolved_palette.tab_bar.active_tab.bg_color
	local inactive_bg = config.resolved_palette.tab_bar.inactive_tab.bg_color
	local hover_bg = config.resolved_palette.tab_bar.inactive_tab_hover.bg_color
	local right_tab = tabs[tab.tab_index + 2]

	local fg_color = inactive_bg
	local bg_color = inactive_bg

	if hover then
		-- special handling to redraw last character of tab to the left
		fg_color = hover_bg
		bg_color = inactive_bg
	end
	if tab.is_active then
		fg_color = active_bg
	end
	if right_tab and right_tab.is_active then
		bg_color = active_bg
	end

	return {
		{ Text = " " .. tab.tab_index + 1 .. " " .. title .. " " },
		{ Foreground = { Color = fg_color } },
		{ Background = { Color = bg_color } },
		{ Text = SOLID_RIGHT_ARROW },
	}
end

wezterm.on("format-tab-title", powerline_tabs)

return module
