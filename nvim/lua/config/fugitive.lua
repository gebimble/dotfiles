require("plugins.fugitive")

local wk = require("which-key")
wk.add({
  { "<leader>ga", "<cmd>Git add .<cr>", desc = "git add all" },
  { "<leader>gb", "<cmd>Git add %<cr>", desc = "git add current buffer" },
  { "<leader>gl", "<cmd>Git blame<cr>", desc = "git blame" },
})
