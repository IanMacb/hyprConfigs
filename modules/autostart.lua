-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprpolkitagent")
  hl.exec_cmd("iio-hyprland")
  hl.exec_cmd("udiskie")
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("hyprsunset")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("dunst")
  -- launch apps on workspaces
  hl.exec_cmd("kitty btop", { workspace = "special:scratchpad silent" })
  hl.exec_cmd("obsidian", { workspace = "1 silent" })
  hl.exec_cmd("firefox", { workspace = "2 silent" })
  hl.exec_cmd("spotify", { workspace = "10 silent" })
  -- hl.exec_cmd("steam", { workspace = "3 silent" })
  -- hl.exec_cmd("discord", { workspace = "10 silent" })
end)
