vim.cmd("highlight TelescopeNormal guibg=none")

local wk = require("which-key")

wk.register({
  f = {
    g = { "<cmd>Telescope grep_string<cr>", "Grep open files" },
    l = { "<cmd>Telescope live_grep<cr>", "Grep cwd recursively" },
  },
}, { prefix = "<leader>" })
