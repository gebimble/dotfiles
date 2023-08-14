require('mason').setup {}
require('mason-lspconfig').setup {}

local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.black.with({ extra_args = "--fast", "--line-length 80"}),
        formatting.reorder_python_imports,
        diagnostics.pydocstyle,
        diagnostics.mypy,
        diagnostics.ruff,

        formatting.stylua,

    },
})

require("lspconfig").pylsp.setup {}

local wk = require("which-key")
wk.register({
  m = {
    name = "Mason", -- optional group name
    m = { ":Mason<CR>", "Open Mason" }, -- create a binding with label
  },
  f = {
        name = "null-ls",
        f = { ":lua vim.lsp.buf.format()<CR>", "Format Current Buffer" },
        d = { ":lua vim.lsp.buf.definition()<CR>", "Go To Definition" },
    }
}, { prefix = "<Leader>" })
