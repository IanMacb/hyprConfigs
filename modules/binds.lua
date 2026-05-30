---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
local explorer    = "thunar"
local browser     = "firefox"
local switcher    = "rofi -show drun -no-show-match"
local lockscreen  = "hyprlock --grace 10"


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more

--Lock and logout
hl.bind("SUPER + L", hl.dsp.exec_cmd(lockscreen))
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

--Window management
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + A", hl.dsp.window.fullscreen( {mode = "maximized"}, {action = "toggle"}))
hl.bind("SUPER + S", hl.dsp.window.swap({next = ""}))
----bind D to hide all
hl.bind("SUPER + D", hl.dsp.window.toggle_swallow())
hl.bind("SUPER + D", hl.dsp.window.toggle_swallow())
hl.bind("SUPER + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + C", hl.dsp.window.center())
hl.bind("SUPER + V", hl.dsp.window.pin())
hl.bind("SUPER + P", hl.dsp.window.pseudo())

hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))    -- dwindle only

--reload waybar
hl.bind("SUPER + R", hl.dsp.exec_cmd("~/.config/waybar/launch.sh"))
-- hl.bind("SUPER + R", hl.dsp.exec_cmd("dunstctl reload"))

--Launch apps
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(switcher))
hl.bind("SUPER + T", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(explorer))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + Z",         hl.dsp.workspace.toggle_special("magic"))
--TODO if emty create a terminal
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Move/resize windows with SUPER + keyboard keys for trackpad use
hl.bind("SUPER + Control_L", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + Alt_L", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
--rasie volume and unmute
-- hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0"), { locked = true, repeating = true })
-- hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
-- --lower volume and unmute
-- hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ 0"),      { locked = true, repeating = true })
-- hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
-- --mute
-- hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
-- hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })

--Volume controls using ~/.local/bin/volumeControl.sh
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("/home/$USER/.local/bin/volumeControl.sh up 5"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("/home/$USER/.local/bin/volumeControl.sh down 5"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("/home/$USER/.local/bin/volumeControl.sh mute"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })


-- --Brightness 
-- hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e1 -n2 set 10%+"),                  { locked = true, repeating = true })
-- hl.bind("SUPER + XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e1 -n2 set 100%+"),                  { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e1 -n2 set 10%-"),                  { locked = true, repeating = true })
-- hl.bind("SUPER + XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e1 -n2 set 100%-"),                  { locked = true, repeating = true })

--Brightness controls using ~/.local/bin/brightnessControl.sh
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("/home/$USER/.local/bin/brightnessControl.sh up 10"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",  hl.dsp.exec_cmd("/home/$USER/.local/bin/brightnessControl.sh down 10"), { locked = true, repeating = true })


-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

