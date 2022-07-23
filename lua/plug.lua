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
    use {'wbthomason/packer.nvim'}
    use {                                              -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons',        -- filesystem icons
                    opt = true},
        cmd = {'NvimTreeToggle'},
        config = [[require('config.nvim-tree')]]
    }

    -- [[ Theme ]]
    --use {'mhinz/vim-startify'}
    use {
        'goolord/alpha-nvim',
        event = 'BufWinEnter',
        config = [[require('config.alpha-nvim')]]
    }
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true},
        config = [[require('config.lualine')]]
    }
    use { 'Mofiqul/dracula.nvim' }

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = {
            {'nvim-lua/plenary.nvim', opt = false},
            {'nvim-lua/popup.nvim', opt = true},
        },
        config = [[require('config.telescope')]]
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        opt = true,
        run = 'make',
        after = 'telescope.nvim',
    }

    use {
        'nvim-telescope/telescope-project.nvim',
        opt = true,
        after = 'telescope-fzf-native.nvim',
    }

    use {
        'nvim-telescope/telescope-frecency.nvim',
        opt = true,
        after = 'telescope-project.nvim',
        requires = { { "tami5/sqlite.lua", opt = true } },
    }

    use {
        'jvgrootveld/telescope-zoxide',
        opt = true,
        after = 'telescope-frecency.nvim',
    }

    use { 'majutsushi/tagbar' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }
    use {
        'windwp/nvim-autopairs',
        after = 'nvim-cmp',
        config = function() require('nvim-autopairs').setup {} end
    }

    use {
        'akinsho/toggleterm.nvim',
        opt = true,
        event = 'BufReadPost',
        config = [[require('config.toggleterm')]]
    }
    use {'numToStr/FTerm.nvim', opt = true, event = "BufReadPost"}
    use {'tpope/vim-commentary'}
    use {
        'nvim-treesitter/nvim-treesitter',
        event = 'BufReadPost',
        run = ':TSUpdate',
        config = [[require('config.treesitter')]]
    }

    -- lspconfig
    use {
        'neovim/nvim-lspconfig',
        opt = true,
        event = 'BufReadPre',
        config = [[require('config.lsp')]]
    }
    use {'williamboman/nvim-lsp-installer', opt = false}
    -- lspkind
    use {'onsails/lspkind-nvim', after = 'nvim-lspconfig'}

    -- nvim-cmp
    use {
        'hrsh7th/nvim-cmp',
        after = 'lspkind-nvim',
        config = [[require('config.nvim-cmp')]]
    }
    use {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'} -- { name = nvim_lsp }
    use {'hrsh7th/cmp-buffer', after = 'nvim-cmp'}   -- { name = 'buffer' },
    use {'hrsh7th/cmp-path', after = 'nvim-cmp'}     -- { name = 'path' }
    use {'hrsh7th/cmp-cmdline', after = 'nvim-cmp'}  -- { name = 'cmdline' }
    -- vsnip
    use {'hrsh7th/cmp-vsnip', after = 'nvim-cmp'}    -- { name = 'vsnip' }
    use {'hrsh7th/vim-vsnip', after = 'nvim-cmp'}
    use {'rafamadriz/friendly-snippets', after = 'nvim-cmp'}

    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = '*',
        event = 'BufReadPost',
        config = [[require('config.bufferline')]]
    }

    -- indent blankline
    use {
        'lukas-reineke/indent-blankline.nvim',
        event = 'BufReadPost',
        config = [[require('config.indent-blankline')]]
    }

    -- which-key
    use {
        'folke/which-key.nvim',
        opt = true,
        keys = ',',
        config = [[require('config.which-key')]]
    }

    -- nvim-notify
    use {
        'rcarriga/nvim-notify',
        config = [[require('config.nvim-notify')]]
    }

    -- start time
    use {'dstein64/vim-startuptime', opt = true, cmd = 'StartupTime'}

    -- filetype
    use {
        'nathom/filetype.nvim',
        config = [[require('config.filetype')]]
    }

end)
