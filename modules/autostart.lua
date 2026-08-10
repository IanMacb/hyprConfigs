-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
  hl.exec_cmd("hyprpolkitagent")
  hl.exec_cmd("iio-hyprland")
  hl.exec_cmd("udiskie")
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("hyprsunset")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("dunst")
  hl.exec_cmd("solaar -w hide")
  -- hl.exec_cmd("firefox")
  -- hl.exec_cmd("obsidian")
  -- hl.exec_cmd("steam")
  -- hl.exec_cmd("discord")
  -- hl.exec_cmd("spotify")
end)
