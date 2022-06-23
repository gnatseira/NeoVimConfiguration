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
require('nvim-tree').setup{}

-- Add the block below
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}

require('nvim-autopairs').setup{}

require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "cpp", "python", "json"},
    highlight = {
        enable = true,
        --enable = false,
        additional_vim_regex_highlighting = false
    },
}

require('lsp/setup')

require('lsp/nvim-cmp')
