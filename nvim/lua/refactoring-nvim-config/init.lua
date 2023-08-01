require('refactoring').setup({})
--
-- load refactoring Telescope extension
require("telescope").load_extension("refactoring")

local wk = require("which-key")
wk.register({
  r = {
    name = "Refactor", -- optional group name
    r = { "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>", "Refactor Selection" }, -- create a binding with label
  },
}, { prefix = "<Leader>", mode = "v" })
