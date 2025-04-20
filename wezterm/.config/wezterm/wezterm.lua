local wezterm = require("wezterm")

wezterm.on("format-tab-title", function(tab)
	local pane = tab.active_pane
	local title = tab.tab_index + 1 .. ": " .. pane.title
	if pane["domain_name"] then
		title = title .. " - (" .. pane.domain_name .. ")"
	end
	return title
end)

return {
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	font = wezterm.font_with_fallback({
		{ family = "JetBrains Mono", weight = "Regular" },
		"Hack Nerd Font Mono",
		"MesloLGS NF",
		"PowerlineSymbols",
	}),
	font_size = 11.0,
	--  color_scheme = "Dracula",
	colors = {
		tab_bar = {
			active_tab = {
				bg_color = "#24283b",
				fg_color = "#c0caf5",
			},
		},
		foreground = "#8cf67a",
	},
	window_frame = {
		font_size = 10.0,
	},
	window_background_opacity = 0.95,
	window_background_image = wezterm.home_dir .. "/Documents/background.png",
	window_background_image_hsb = {
		-- Darken the background image by reducing it to 1/3rd
		brightness = 0.01,

		-- You can adjust the hue by scaling its value.
		-- a multiplier of 1.0 leaves the value unchanged.
		hue = 1.0,

		-- You can adjust the saturation also.
		saturation = 1.0,
	},
	use_ime = true,
	keys = {
		{
			key = "\\",
			mods = "CTRL",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = '"',
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical,
		},
	},
	enable_wayland = true,
	term = "xterm-256color",
}
