require("neogen").setup({
  enabled = true, --if you want to disable Neogen
  input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
  -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
})

local wk = require("which-key")

wk.register({
  n = {
    f = { "<cmd>Neogen func<cr>", "Annotate file" },
    t = { "<cmd>Neogen type<cr>", "Annotate  type" },
    i = { "<cmd>Neogen file<cr>", "Annotate function" },
    c = { "<cmd>Neogen class<cr>", "Annotate class" },
  },
}, { prefix = "<leader>" })
