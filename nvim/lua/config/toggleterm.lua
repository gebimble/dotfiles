require("toggleterm").setup({
  open_mapping = [[<C-\>]],
  direction = "float",
  float_opts = {
    border = "curved",
    winblend = 10,
  },
})

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<cr>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<cr>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<cr>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<cr>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local python = Terminal:new({ cmd = "python", hidden = true })
local ipython = Terminal:new({ cmd = "ipython", hidden = true })
local ncdu = Terminal:new({ cmd = "ncdu", hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

function _PYTHON_TOGGLE()
  python:toggle()
end

function _IPYTHON_TOGGLE()
  ipython:toggle()
end

function _NCDU_TOGGLE()
  ncdu:toggle()
end

local wk = require("which-key")
wk.add({
  { "<Leader>t", group = "Toggleterm" },
  { "<Leader>ti", "<cmd> lua _IPYTHON_TOGGLE()<cr>", desc = "Open iPython Terminal" },
  { "<Leader>tl", "<cmd> lua _LAZYGIT_TOGGLE()<cr>", desc = "Open lazygit Terminal" },
  { "<Leader>tn", "<cmd> lua _NCDU_TOGGLE()<cr>", desc = "Open ncdu Terminal" },
  { "<Leader>tp", "<cmd> lua _PYTHON_TOGGLE()<cr>", desc = "Open Python Terminal" },
  { "<Leader>tt", "<cmd> ToggleTerm<cr>", desc = "Open Terminal" },
})
