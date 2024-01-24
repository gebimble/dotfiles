require("illuminate").configure({
  opts = {
    delay = 200,
    large_file_cutoff = 2000,
    large_file_overrides = {
      providers = { "lsp" },
    },
  },
})

-- change the highlight style
vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual", standout = true })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual", standout = true })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual", standout = true })

--- auto update the highlight style on colorscheme change
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  pattern = { "*" },
  callback = function(ev)
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual", standout = true })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual", standout = true })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual", standout = true })
  end,
})
