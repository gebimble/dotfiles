require('neodim').setup({
    refresh_delay = 75, -- time in ms to wait after typing before refresh diagnostics
    alpha = .50,
    blend_color = "#000000",
    hide = { underline = true, virtual_text = true, signs = true },
    disable = {}, -- table of filetypes to disable neodim
})
