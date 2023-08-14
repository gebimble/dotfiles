require("zen-mode").setup()
require("twilight").setup()

local wk = require("which-key")
wk.register({
  z = {
    name = "Zen Mode", -- optional group name
    z = { ":ZenMode<CR>", "Toggle Zen Mode" }, -- create a binding with label
  },
}, { prefix = "<Leader>" })
