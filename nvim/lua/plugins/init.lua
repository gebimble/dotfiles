vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Package Manager
    use({
        "wbthomason/packer.nvim",
    })

    -- Monokai Theme for Neovim with tree-sitter support
    use({
        "tanvirtin/monokai.nvim",
    })

    use({
        "nvim-treesitter/nvim-treesitter",
    })

    -- WhichKey
    use({
        "folke/which-key.nvim",
        -- end,
    })

    -- -- Leap is a general-purpose motion plugin for Neovim
    -- use({
    --     "ggandor/leap.nvim"
    -- })

    -- `flash.nvim` lets you navigate your code with search labels, enhanced character motions, and Treesitter integration.
    use({
        "folke/flash.nvim"
    })

    -- A blazing fast and easy to configure Neovim statusline written in Lua
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    -- Neogen
    use({
        "danymat/neogen",
        config = function()
            require("neogen").setup({})
        end,
        requires = "nvim-treesitter/nvim-treesitter",
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    })

    -- A work-in-progress Magit clone for Neovim that is geared toward the Vim philosophy.
    use({
        "NeogitOrg/neogit",
        requires = "nvim-lua/plenary.nvim",
    })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    -- The Refactoring library based off the Refactoring book by Martin Fowler
    use({
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" },
        },
    })

    -- A super powerful autopair plugin for Neovim that supports multiple characters.
    use({
        "windwp/nvim-autopairs",
    })

    -- A File Explorer For Neovim Written In Lua
    use({
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", -- optional, for file icons
        },
        tag = "nightly", -- optional, updated every week. (see issue #1193)
    })

    -- Gaze deeply into unknown regions using the power of the moon.
    -- consider https://github.com/sharkdp/fd#installation
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    })

    -- Distraction-free coding for Neovim >= 0.5
    use({
        "folke/zen-mode.nvim",
        requires = {
            "folke/twilight.nvim",
        },
    })

    -- dim is a lua plugin for neovim to dim the unused variables and functions using lsp and treesitter
    -- use({
    --     "narutoxy/dim.lua",
    --     requires = { "nvim-treesitter/nvim-treesitter", "neovim/nvim-lspconfig" },
    -- })

    -- Neovim plugin for dimming the highlights of unused functions, variables, parameters, and more!
    use({
        "zbirenbaum/neodim",
        config = function()
            require("neodim").setup()
        end,
    })

    -- LSP things
    use({
        "williamboman/mason.nvim",
        requires = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "jose-elias-alvarez/null-ls.nvim",
        },
    })

    -- Dev setup for init.lua and plugin development with full signature help,
    -- docs and completion for the nvim lua API.
    use({
        "folke/neodev.nvim",
    })

    -- autocomplete stuff
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        },
    })

    -- A neovim plugin to persist and toggle multiple terminals during an editing session
    use({
        "akinsho/toggleterm.nvim",
    })

    use({
        'HallerPatrick/py_lsp.nvim',
        -- Support for versioning
        -- tag = "v0.0.1"
    })

   use({
        "christoomey/vim-tmux-navigator",
        lazy = false
    })

    --
    --
    -- use "mfussenegger/nvim-dap"
    --
    --
    --
    --
    -- -- Dracula colorscheme for NEOVIM written in Lua
    -- use {
    --     "Mofiqul/dracula.nvim"
    -- }
    --
    --
    --
    --
    --
    --
    -- use {
    --     "mhartington/formatter.nvim",
    -- }
end)
