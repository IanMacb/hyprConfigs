
-- Glasscope
hl.on("hyprland.start", function()
    if os.getenv("HYPR_NO_PLUGINS") ~= "1" then
        hl.exec_cmd("hyprpm reload -n")
    end
end)

-- if os.getenv("HYPR_NO_PLUGINS") ~= "1" and hl.plugin.glasscope ~= nil then
--     hl.config({
--         plugin = {
--             glasscope = {
--                 enabled = true,
--                 radius = 200,
--                 zoom = 2.5,
--                 color_strength = 0.3,
--                 color_width = 18.0,
--                 motion_strength = 0.5,
--                 colors = {
--                     transmission = "rgba(ffb8740d)",
--                     refraction = "rgba(afd428a6)",
--                     reflection = "rgba(f77a9599)",
--                     highlight = "rgba(efe0d580)",
--                 },
--             },
--         },
--     })

--     hl.bind("SUPER + SHIFT + W", function()
--         hl.plugin.glasscope.toggle()
--     end, { description = "Show or hide Glasscope" })

--     hl.bind("SUPER + ALT + A", function()
--         hl.plugin.glasscope.toggle_pin()
--     end, { description = "Pin or unpin Glasscope" })

--     hl.bind("SUPER + ALT + C", function()
--         hl.plugin.glasscope.begin_color_probe()
--     end, { description = "Pick a colour" })

--     hl.bind("Escape", function()
--         hl.plugin.glasscope.cancel_color_probe()
--     end, { description = "Cancel colour picking" })
-- end