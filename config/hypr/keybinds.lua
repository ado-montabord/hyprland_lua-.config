local mod = "SUPER"

-- Programmes
local terminal   = "kitty"
local browser    = "firefox"
local filemanager = "thunar"
local launcher   = "rofi -show drun"

-- Applications
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + B",      hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + E",      hl.dsp.exec_cmd(filemanager))
hl.bind(mod .. " + d",      hl.dsp.exec_cmd(launcher))


-- Verrouiller manuellement
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"))

-- Quitter
hl.bind(mod .. " + M",      hl.dsp.exit())


-- Sélecteur de fenêtres ouvertes
hl.bind("SUPER + Tab", hl.dsp.exec_cmd("rofi -show window"))

-- Fenêtres
hl.bind(mod .. " + A",      hl.dsp.window.close())
hl.bind(mod .. " + space",      hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + F",      hl.dsp.window.fullscreen())
hl.bind(mod .. " + P",      hl.dsp.window.pseudo())


-- Focus directionnel
hl.bind(mod .. " + left",   hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right",  hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up",     hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down",   hl.dsp.focus({ direction = "down" }))

-- Déplacer fenêtres
hl.bind(mod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))

-- Workspaces 1 à 10 (boucle Lua !)

-- Touches AZERTY pour les workspaces (clavier 60%)
local workspace_keys = {
    "ampersand",   -- & = workspace 1
    "eacute",      -- é = workspace 2
    "quotedbl",    -- " = workspace 3
    "apostrophe",  -- ' = workspace 4
    "parenleft",   -- ( = workspace 5
}

for i, key in ipairs(workspace_keys) do
    hl.bind(mod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end


-- Souris
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Scroll workspaces avec molette
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

