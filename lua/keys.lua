-- [[ keys.lua ]]
vim.g.mapleader = ';'

local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true,
}

-- remap the key used to leave insert mode
map('i', 'jk', '<ESC>', opt)

-- shorcut for exit without save
map('n', '<leader>qq', [[:q!<CR>]], opt)

-- Toggle nvim-tree
map('n', '<C-n>', [[:NvimTreeToggle<CR>]], opt)
map('n', '<C-h>', '<C-w>h', opt)

-- tagbar
map('n', '<leader>tt', [[:SymbolsOutline<CR>]], opt)

-- telescope
map('n', '<leader>ff', [[:Telescope find_files<CR>]], opt)
map('n', '<leader>fo', [[:Telescope oldfiles<CR>]], opt)
map('n', '<leader>fw', [[:Telescope live_grep<CR>]], opt)
map('n', '<leader>fg', [[:Telescope git_files<CR>]], opt)
map('n', '<leader>fz', [[:Telescope zoxide list<CR>]], opt)
map('n', '<leader>fp', [[:Telescope project<CR>]], opt)
map('n', '<leader>fr', [[:Telescope frecency<CR>]], opt)
map('n', '<leader>fc', [[:Telescope colorscheme<CR>]], opt)
map('n', '<leader>fn', [[:enew<CR>]], opt)

-- bufferline
map('n', '<C-p>', [[:BufferLineCycleNext<CR>]], opt)
map('n', '<C-o>', [[:BufferLineCyclePrev<CR>]], opt)
map('n', '<C-a>', [[:BufferLinePickClose<CR>]], opt)
map('n', '<C-s>', [[:BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>]], opt)

-- packer
map('n', '<leader>ps', [[:PackerSync<CR>]], opt);
map('n', '<leader>pu', [[:PackerUpdate<CR>]], opt);
map('n', '<leader>pi', [[:PackerInstall<CR>]], opt);
map('n', '<leader>pc', [[:PackerClean<CR>]], opt);

-- toggleterm
map('n', '<leader>tf', [[:ToggleTerm direction=float<CR>]], opt);
map('n', '<leader>tv', [[:ToggleTerm direction=vertical<CR>]], opt);
map('n', '<leader>th', [[:ToggleTerm direction=horizontal<CR>]], opt);

-- diffview
map('n', '<leader>do', [[:DiffviewOpen<CR>]], opt)
map('n', '<leader>dc', [[:DiffviewClose<CR>]], opt)
