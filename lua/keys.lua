-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
-- Toggle nvim-tree
map('n', '<C-n>', [[:NvimTreeToggle]], {})

map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', '<C-o>', [[:BufferLineCycleNext<CR>]], {})
map('n', '<C-p>', [[:BufferLineCyclePrev<CR>]], {})
