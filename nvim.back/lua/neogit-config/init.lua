local neogit = require('neogit')

neogit.setup {}

local wk = require("which-key")
wk.register({
  c = {
    name = "Neogit", -- optional group name
    n = { ":Neogit<CR>", "Open Neogit" }, -- create a binding with label
  },
}, { prefix = "<Leader>" })
