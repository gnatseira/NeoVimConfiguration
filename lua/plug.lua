-- [[ plug.lua ]]

-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
	if vim.fn.input("Hent packer.nvim? (y for yada)") ~= "y" then
		return
	end

	local directory = string.format(
	'%s/site/pack/packer/opt/',
	vim.fn.stdpath('data')
	)

	vim.fn.mkdir(directory, 'p')

	local git_clone_cmd = vim.fn.system(string.format(
	'git clone %s %s',
	'https://github.com/wbthomason/packer.nvim',
	directory .. '/packer.nvim'
	))

	print(git_clone_cmd)
	print("Henter packer.nvim...")

	return
end

return require('packer').startup(function(use)
    -- [[ Plugin Go Here ]] 
    use {'lewis6991/impatient.nvim'}
    use {'wbthomason/packer.nvim'}
    use {                                              -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons',        -- filesystem icons
                    opt = true}
    }

    -- [[ Theme ]]
    use {'mhinz/vim-startify'}
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true}
    }
    use { 'Mofiqul/dracula.nvim' }

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'majutsushi/tagbar' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {'voldikss/vim-floaterm'}
    use {'tpope/vim-commentary'}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

end)