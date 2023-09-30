return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "shellcheck",
      "shfmt",

      "json-lsp",

      "python-lsp-server",
      "black",
      "flake8",
      "ruff",
      "ruff-lsp",

      "codelldb",
      "rust-analyzer",
    },
  },
}
