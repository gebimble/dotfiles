vim.cmd("let test#strategy = 'vimux'")
vim.cmd("let test#python#pytest#executable = 'rye run pytest'")

local wk = require("which-key")

wk.add({
  { "<leader>TT", "<cmd>TestFile<CR>", desc = "Test file" },
  { "<leader>Ta", "<cmd>TestSuite<CR>", desc = "Test suite" },
  { "<leader>Tg", "<cmd>TestVisit<CR>", desc = "Test visit" },
  { "<leader>Tl", "<cmd>TestLast<CR>", desc = "Test last" },
  { "<leader>Tt", "<cmd>TestNearest<CR>", desc = "Test nearest" },
})
