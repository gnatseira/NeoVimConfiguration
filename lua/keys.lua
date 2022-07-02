-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true,
}

-- remap the key used to leave insert mode
-- Toggle nvim-tree
map('n', '<C-n>', [[:NvimTreeToggle<CR>]], opt)

map('n', 't', [[:TagbarToggle]], opt)
map('n', 'ff', [[:Telescope find_files]], opt)
map('n', 'fr', [[:Telescope oldfiles]], opt)
map('n', '<C-o>', [[:BufferLineCycleNext<CR>]], opt)
map('n', '<C-p>', [[:BufferLineCyclePrev<CR>]], opt)
map('n', '<C-h>', '<C-w>h', opt)
