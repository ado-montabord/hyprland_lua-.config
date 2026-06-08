



-- Empêcher les fenêtres de se maximiser toutes seules
hl.window_rule({
    name          = "suppress-maximize",
    match         = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix drag XWayland
hl.window_rule({
    name        = "fix-xwayland-drag",
    match       = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})


-- Fenêtres de dialogue Thunar (renommage, copie, etc.)
hl.window_rule({
    name  = "thunar-dialogs",
    match = { 
        class = "^thunar$",
        title = "^(Renommer|Rename|Copier|Copy|Déplacer|Move|Supprimer|Delete).*",
    },
    float = true,
    move  = "960 540",
})





-- Blur sur waybar
hl.layer_rule({
    name      = "waybar-blur",
    match     = { namespace = "^waybar$" },
    blur      = true,
    
})

-- Blur sur rofi
hl.layer_rule({
    name  = "rofi-blur",
    match = { namespace = "^rofi$" },
    blur  = true,
})
