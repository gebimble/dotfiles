require("plugins.fugitive")

local wk = require("which-key")

wk.register({
  g = {
    a = { "<cmd>Git add .<cr>", "git add all" },
    l = { "<cmd>Git blame<cr>", "git blame" },
    b = { "<cmd>Git add %<cr>", "git add current buffer" },
  },
}, { prefix = "<leader>" })
