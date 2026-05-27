---------------
---- INPUT ----
---------------

hl.config({
    input = {
        --Keyboard
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
        
        repeat_rate = 50,
        repeat_delay = 350,

        --Mouse
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        
        touchpad = {
            natural_scroll = true,
            scroll_factor = 1.0,
            middle_button_emulation = true,
            
        },

        touchdevice = {
            transform = 0,
        }
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})


hl.gesture({
    fingers = 4,
    direction = "vertical",
    action = "special",
    workspace_name = "magic"
})
