-- Set up nvim-cmp.
-- local has_words_before = function()
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
-- end
--
-- local feedkey = function(key, mode)
--   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
-- end
-- vim.o.completeopt = "menuone,noinsert,noselect"

local cmp = require("cmp")

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

    -- ["<Tab>"] = cmp.mapping(function(fallback)
    --   if cmp.visible() then
    --     cmp.select_next_item()
    --   -- elseif vim.fn["vsnip#available"](1) == 1 then
    --   --   feedkey("<Plug>(vsnip-expand-or-jump)", "")
    --   elseif has_words_before() then
    --     cmp.complete()
    --   else
    --     fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
    --   end
    -- end, { "i", "s" }),
    --
    -- ["<S-Tab>"] = cmp.mapping(function()
    --   if cmp.visible() then
    --     cmp.select_prev_item()
    --     -- elseif vim.fn["vsnip#jumpable"](-1) == 1 then
    --     --   feedkey("<Plug>(vsnip-jump-prev)", "")
    --   end
    -- end, { "i", "s" }),
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    -- { name = "vsnip" }, -- For vsnip users.
    { name = "luasnip" }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    -- { name = "codeium" },
  }, {
    { name = "buffer" },
  }),
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = "buffer" },
  }),
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require("lspconfig")["lua_ls"].setup({
  capabilities = capabilities,
})

require("lspconfig")["pylsp"].setup({
  cmd = { "pylsp" },
  cmd_env = { VIRTUAL_ENV = ".venv" },
  capabilities = capabilities,
  init_options = {
    settings = {
      interpreter = { ".venv/bin/python" },
      args = {},
    },
  },
})

-- require("lspconfig")["pylyzer"].setup({
--   capabilities = capabilities,
-- init_options = {
--   settings = {
--     interpreter = { vim.env.VIRTUAL_ENV },
--     args = {},
--   },
-- },
-- })

-- require("lspconfig")["ruff_lsp"].setup({
--   capabilities = capabilities,
--   -- init_options = {
--   --   settings = {
--   --     interpreter = { ".venv/bin/python" },
--   --     args = {},
--   --   },
--   -- },
-- })

-- require("lspconfig")["texlab"].setup({
--   capabilities = capabilities,
-- })

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     client.server_capabilities.semanticTokensProvider = nil
--   end,
-- }
)
