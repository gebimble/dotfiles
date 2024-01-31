require("plugins.fugitive")

vim.keymap.set("n", "<leader>ga", ":Git add<CR>")
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
