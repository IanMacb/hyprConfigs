--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- hl.window_rule({
--     name  = "move-hyprland-run",
--     match = { class = "hyprland-run" },

--     move  = "20 monitor_h-120",
--     float = true,
-- })

-- on fullscreen, move app to next empty workspace WIP
hl.window_rule({match = {fullscreen_state_client = 2},  workspace = "emptyn"})

--make windows default float
hl.window_rule({match = {class = "org.pulseaudio.pavucontrol"}, float = true, pin = true, size = {500, 400}, move = {"(monitor_w-520)", "(30)"}})
hl.window_rule({match = {class = "com.saivert.pwvucontrol"}, float = true, pin = true, size = {500, 400}, move = {"(monitor_w-520)", "(30)"}})
hl.window_rule({match = {class = "com.network.manager"}, float = true, pin = true, size = {500, 400}, move = {"(monitor_w-520)", "(30)"}})
hl.window_rule({match = {class = "blueman-manager"}, float = true, pin = true, size = {500, 400}, move = {"(monitor_w-520)", "(30)"}})

-- When creating a new scrathpad workspace, open a kitty window
hl.workspace_rule({workspace = "special:scratchpad", on_created_empty="kitty"})

hl.window_rule({match = {class = "org.quickshell"}, float = true, pin = true, move = {"(monitor_w/2)", "(monitor-l/2)"}})
-- Assign workspaces to each monitor
-- hl.workspace_rule({workspace = "r[1-9]", monitor = "DP-1"})
-- hl.workspace_rule({workspace = "r[10-14]", monitor = "DP-2"})
-- hl.workspace_rule({workspace = "10", monitor = "DP-2", default = true})
