require("lspconfig")["pylsp"].setup({
  cmd = { "pylsp" },
  cmd_env = { VIRTUAL_ENV = ".venv" },
  -- capabilities = capabilities,
  init_options = {
    settings = {
      interpreter = { ".venv/bin/python" },
      args = {},
    },
  },
})
