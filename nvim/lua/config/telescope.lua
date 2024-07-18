vim.cmd("highlight TelescopeNormal guibg=none")

local wk = require("which-key")

wk.add({
  { "<leader>fg", "<cmd>Telescope grep_string<cr>", desc = "Grep open files" },
  { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Grep cwd recursively" },
})
