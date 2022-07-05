-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true,
}

-- remap the key used to leave insert mode
map('i', 'jk', '<ESC>', opt)

-- Toggle nvim-tree
map('n', '<C-n>', [[:NvimTreeToggle<CR>]], opt)
map('n', '<C-h>', '<C-w>h', opt)

-- tagbar
map('n', 't', [[:TagbarToggle<CR>]], opt)

-- telescope
map('n', 'ff', [[:Telescope find_files<CR>]], opt)
map('n', 'fr', [[:Telescope oldfiles<CR>]], opt)

-- bufferline
map('n', '<C-o>', [[:BufferLineCycleNext<CR>]], opt)
map('n', '<C-p>', [[:BufferLineCyclePrev<CR>]], opt)
map('n', '<C-a>', [[:BufferLinePickClose<CR>]], opt)
map('n', '<C-s>', [[:BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>]], opt)
