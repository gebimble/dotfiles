vim.cmd("let test#strategy = 'vimux'")
vim.cmd("let test#python#pytest#executable = 'rye run pytest'")

local wk = require("which-key")

wk.register({
  T = {
    t = { "<cmd>TestNearest<CR>", "Test nearest" },
    T = { "<cmd>TestFile<CR>", "Test file" },
    a = { "<cmd>TestSuite<CR>", "Test suite" },
    l = { "<cmd>TestLast<CR>", "Test last" },
    g = { "<cmd>TestVisit<CR>", "Test visit" },
  },
}, { prefix = "<leader>" })
