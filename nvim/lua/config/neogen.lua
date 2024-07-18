require("neogen").setup({
  enabled = true, --if you want to disable Neogen
  input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
  -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
})

local wk = require("which-key")

wk.add({
  { "<leader>nc", "<cmd>Neogen class<cr>", desc = "Annotate class" },
  { "<leader>nf", "<cmd>Neogen func<cr>", desc = "Annotate file" },
  { "<leader>ni", "<cmd>Neogen file<cr>", desc = "Annotate function" },
  { "<leader>nt", "<cmd>Neogen type<cr>", desc = "Annotate type" },
})
