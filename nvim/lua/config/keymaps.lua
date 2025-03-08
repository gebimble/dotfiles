-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- map leader key to space
vim.g.mapleader = " "

-- map shortcut
local map = vim.keymap.set

-- map jj to <ESC>
map("i", "jj", "<ESC>", { noremap = true, silent = false })

-- change buffer
map("n", "gn", ":bn<cr>")
map("n", "gb", ":bp<cr>")

-- close buffer
map("n", "<leader>qb", ":q<cr>", { noremap = true, silent = false })

vim.keymap.del("n", "H")
vim.keymap.del("n", "L")

local wk = require("which-key")

wk.add({
  { "<Leader>q", group = "quit/session" },
  { "<Leader>qb", "<cmd> q<cr>", desc = "Quit Buffer" },
  { "<Leader>qw", "<cmd> w<cr>", desc = "Save" },
  { "<Leader>qx", "<cmd> x<cr>", desc = "Save and Quit" },
})

wk.add({
  { "<Leader>o", group = "Obsidian" },
  { "<Leader>on", "<cmd> ObsidianLinkNew<cr>", desc = "Obsidian New Link" },
  { "<Leader>of", "<cmd> ObsidianFollowLink<cr>", desc = "Obsidian Follow Link" },
})
