-- [[ opt.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

-- [[ Context ]]
opt.number = true

-- [[ File Encoding ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true  -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true        -- bool: Override ignorecase if search contains capitals
opt.incsearch = true
opt.hlsearch = false

-- [[ Whitespace ]]
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- [[ Split ]]
opt.splitright = true
opt.splitbelow = true

-- [[ Which-key ]]
opt.timeoutlen = 500
