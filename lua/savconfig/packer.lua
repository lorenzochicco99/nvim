-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
      use({
      "folke/tokyonight.nvim",
      lazy = false,       -- Ensure the theme is loaded immediately
      priority = 1000,    -- Load this theme with high priority
      config = function()
        -- Theme setup, setting the colorscheme
        vim.g.tokyonight_style = "night" -- Options "night", "storm", "day", "moon"
	vim.cmd("colorscheme tokyonight")
      end,
    })
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use('nvim-tree/nvim-tree.lua')
	use('nvim-tree/nvim-web-devicons')
	use('nvim-lualine/lualine.nvim')
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
	use('neovim/nvim-lspconfig')
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'hrsh7th/cmp-buffer' -- Buffer completions
	use 'hrsh7th/cmp-path' -- Path completions
	use 'hrsh7th/cmp-cmdline' -- Command-line completions
	use 'saadparwaiz1/cmp_luasnip' -- Snippet completions
	use 'L3MON4D3/LuaSnip' -- Snippet engine
	-- You can add other plugins here
end) 
