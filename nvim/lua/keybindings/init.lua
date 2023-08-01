-- map leader key to space
vim.g.mapleader = ' '

-- map shortcut
local map = vim.keymap.set

-- map jj to <ESC>
map('i', 'jj', '<ESC>', { noremap = true, silent = false })

-- change buffer
map('n', 'gn', ':bn<CR>')
map('n', 'gb', ':bp<CR>')

-- window hopping
map('n', '<C-h>', '<C-w><C-h>', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w><C-j>', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w><C-k>', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w><C-l>', { noremap = true, silent = false })
