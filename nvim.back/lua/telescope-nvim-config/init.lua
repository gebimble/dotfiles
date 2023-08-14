require("telescope").setup({
    defaults = {
        winblend = 10,
    },
})

local wk = require("which-key")
wk.register({
    t = {
        name = "Telescope", -- optional group name
        f = { ":Telescope find_files<CR>", "Find File" }, -- create a binding with label
        g = { ":Telescope live_grep<CR>", "Live Grep" }, -- create a binding with label
        b = { ":Telescope buffers<CR>", "Buffers" }, -- create a binding with label
        h = { ":Telescope help_tags<CR>", "Help Tags" }, -- create a binding with label
        r = { ":Telescope oldfiles<CR>", "Open Recent File" },
    },
}, { prefix = "<Leader>" })
