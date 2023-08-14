-- map to ctrl-n
local map = vim.keymap.set
map('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = false })

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- setup with some options
require("nvim-tree").setup({
    sync_root_with_cwd = true,
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

-- keymap
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1 
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_respect_buf_cwd = 1
