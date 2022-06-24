-- [[init.lua]]

-- LEADER

vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')     -- Variables
require('opts')     -- Options
require('keys')     -- Keymaps
require('plug')     -- Plugins

-- PLUGINS: Add this section
require('impatient')

-- Add the block below
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}

require('nvim-autopairs').setup{}

require('lsp/setup')

require('lsp/nvim-cmp')
