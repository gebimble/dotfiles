-- options stuff
vim.opt.timeoutlen = 200
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.encoding = 'utf-8'
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.mouse = 'a'

-- api stuff
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { link = "Comment" })
