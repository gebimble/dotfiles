local init_string = "~/.config/nvim/lua/%s/init.lua"

local keybindings_init = string.format(init_string, "keybindings")
local plugins_init = string.format(init_string, "plugins")
local telescope_init = string.format(init_string, "telescope-nvim-config")
local whichkey_init = string.format(init_string, "whichkey-config")
local options_init = string.format(init_string, "options")

local wk = require("which-key")

wk.setup({})

local leader_mappings = {

    -- closing/quitting
    q = {":q<CR>", "Quit"},
    w = {":w<CR>", "Save"},
    x = {":x<CR>", "Save and Quit"},
    bd = {":bd<CR>", "Close Buffer"},

    -- opening configs
    o = {
        name = "Open",
        v = {":e $MYVIMRC<CR>", "Open vimrc"},
        k = {":e " .. keybindings_init .. "<CR>", "Open Key Bindings"},
        p = {":e " .. plugins_init .. "<CR>", "Open Plugins"},
        t = {":e " .. telescope_init .. "<CR>", "Open Telescope Mappings"},
        w = {":e " .. whichkey_init .. "<CR>", "Open Whichkey Mappings"},
        o = {":e " .. options_init .. "<CR>", "Open neovim Options"},
    },

    -- source configs
    s = {
        name = "Source",
        v = {":source $MYVIMRC<CR>", "Source vimrc"},
        k = {":source " .. keybindings_init .. "<CR>", "Source Key Bindings"},
        p = {":source " .. plugins_init .. "<CR>", "Source Plugins"},
        t = {":source " .. telescope_init .. "<CR>", "Source Telescope Mappings"},
        w = {":source " .. whichkey_init .. "<CR>", "Source Whichkey Mappings"},
    },

    -- reformat block
    g = {
        name = "Reformat",
        q = {"gqip vip=", "Reformat Block"},
    },


    -- packer
    p = {
        name = "Packer",
        u = {":PackerUpdate<CR>", "Packer Update"},
        s = {":PackerSync<CR>", "Packer Sync"}
    },

    -- neogen
    n = {
        name = "Neogen",
        c = { ":Neogen class<CR>", "Generate Class Docs" },
        f = { ":Neogen func<CR>", "Generate Function Docs" },
        i = { ":Neogen file<CR>", "Generate File Docs" },
        t = { ":Neogen type<CR>", "Generate Type Docs" },
    },

    -- delete
    d = {
        name = "Delete",
        e = {"0d$", "Entire Line"},
        w = {":%s/\\s\\+$//e<CR>", "End-line Whitespace"}
    }

}

local opts = {prefix = "<leader>"}
wk.register(leader_mappings, opts)
