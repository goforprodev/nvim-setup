local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
    })

    use 'wbthomason/packer.nvim'
    use 'tpope/vim-commentary'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'nvim-treesitter/nvim-treesitter'
    use("theprimeagen/harpoon")
    use ('mbbill/undotree')
    use('tpope/vim-fugitive')

    --themes
    use 'ellisonleao/gruvbox.nvim'
    use 'dracula/vim'
    use 'bluz71/vim-nightfly-colors'

    --Autocompletions
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use "github/copilot.vim"

    --lsp % mason
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use('nvim-tree/nvim-tree.lua') 
    use('nvim-tree/nvim-web-devicons')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
