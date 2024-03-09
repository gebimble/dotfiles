return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "docker-compose-language-service",
      "dockerfile-language-server",

      "lua-language-server",
      "stylua",
      "shellcheck",
      "shfmt",

      "json-lsp",

      -- "black",
      -- "flake8",
      "docformatter",
      "python-lsp-server",
      -- "pylyzer",
      "ruff",
      "ruff-lsp",

      "codelldb",
      "rust-analyzer",

      "taplo",
      "yaml-language-server",

      "latexindent",
      "texlab",
      "yaml-language-server",
      "yamlfmt",
    },
  },
}
