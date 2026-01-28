-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
--
-- config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe", "-l" }
config.default_prog = { "C:/Users/owlci/AppData/Local/Programs/nu/bin/nu.exe" }

-- For example, changing the color scheme:
config.color_scheme = "Kanagawa"

config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })
config.font_size = 10.0

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 6,
	bottom = 0,
}

-- config.background = {
-- 	{
-- 		source = {
-- 			-- File = "E:/Artworks/Wallpapers/1564629449435 copy.png",
-- 			-- File = "E:/Artworks/Wallpapers/anime-girl-cyberpunk.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/anime-girl-white-hair-.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/planet-night-sky-scenery-uhdpaper.com.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/GenshinScene.jpeg",
-- 			-- File = "E:/Artworks/Wallpapers/Citlali.png",
-- 			-- File = "E:/Artworks/Wallpapers/sunrise-cat-anime.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/lauma.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/huTao.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/yaemiko2.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/street.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/alena-aenami-endless-1k.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/furina.jpeg",
-- 			-- File = "E:/Artworks/Wallpapers/Nilou - Heavenly Swish [Genshin Impact].png",
-- 			-- File = "E:/Artworks/Wallpapers/ganyu_genshin_impact.png",
-- 			-- File = "E:/Artworks/Wallpapers/flower_2.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/alvin-seeber-night.jpeg",
-- 			-- File = "E:/Artworks/Wallpapers/cloudswirl.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/grady-frederick-consecration.jpeg",
-- 			-- File = "E:/Artworks/Wallpapers/BlackGradient.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/BlueGradient.jpg",
-- 			-- File = "E:/Artworks/Wallpapers/bwFirewatch.png",
-- 			-- File = "E:/Artworks/Wallpapers/__lynae_wuthering_waves__d54a954b282af5a07ae1b502e26ae7a3.jpg",
-- 			File = "E:/Artworks/Wallpapers/Columbina.png",
-- 		},
-- 		hsb = { brightness = 0.03, saturation = 1.0 },
-- 		horizontal_align = "Center",
-- 		vertical_align = "Middle",
-- 	},
-- }

config.keys = {
	-- Toggle zoom (full screen) for current pane
	-- Ctrl+Shift+Z to zoom/unzoom the current pane
	{
		key = "z",
		mods = "CTRL|SHIFT",
		action = wezterm.action.TogglePaneZoomState,
	},

	-- Split panes
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- Navigate between panes with Ctrl+Shift+Arrow keys
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	-- Close current pane
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

-- and finally, return the configuration to wezterm
return config
