-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
--
config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe", "-l" }

-- For example, changing the color scheme:
config.color_scheme = "Andromeda"

config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font("JetBrains Mono")
config.font_size = 10.0

config.window_decorations = "RESIZE"

config.background = {
	{
		source = {
			File = "E:/Artworks/Wallpapers/1564629449435 copy.png",
			-- File = "E:/Artworks/Wallpapers/flower_2.jpg",
		},
		hsb = { brightness = 0.03, saturation = 0.5 },
		horizontal_align = "Center",
		vertical_align = "Middle",
	},
}

-- and finally, return the configuration to wezterm
return config
