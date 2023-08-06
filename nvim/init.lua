-- Normal, boring nvim stuff
require('options')
require('keybindings')

-- Colorscheme
require('colourscheme')

-- Installed Plugins
require('plugins')

-- Syntax Highlighting
require('nvim-treesitter-config')

-- Load individual config options
-- Shortcuts
require('whichkey-config')
-- Motion
-- require('leap-nvim-config')
require('flash-nvim-config')
-- Comments
require('comment-nvim-config')
-- Docstrings
require('neogen-config')
-- Git
require('neogit-config')
-- Refactoring
require('refactoring-nvim-config')
-- Autobrackets
require('nvim-autopairs-config')

-- Navigation
require('nvim-tree-config')
require('telescope-nvim-config')

-- Language Servers
require('mason-nvim-config')
require('neodev')

-- Autocomplete popups
require('nvim-cmp-config')

-- Terminal
require('toggleterm-config')

-- Python LSP stuff
require('pylsp-config')

-- Visual Aids
require('zen-mode-config')
require('lualine-config')
require('neodim-config')

-- require('markdown-preview-nvim-config')
