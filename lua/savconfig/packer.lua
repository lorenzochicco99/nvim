-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer manages packages, including itself!
	use('wbthomason/packer.nvim') -- Packer manager
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
	} -- UI for various plugins
	use('folke/tokyonight.nvim') -- Aestethic theme
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- Syntax Highlighter
	use('ThePrimeagen/harpoon') -- File cycler 
	use('nvim-tree/nvim-tree.lua') -- File explorer
	use('nvim-tree/nvim-web-devicons') -- Icons for nvim-tree
	use('nvim-lualine/lualine.nvim') -- Information bar
	use('williamboman/mason.nvim') -- Mason is used to manage and install Language Server Protocols
	use('williamboman/mason-lspconfig.nvim') -- Language Server Protocol Configurator
	use('neovim/nvim-lspconfig') -- Language Server Protocol configurator
	use('hrsh7th/nvim-cmp') -- Autocompletion plugin
	use('hrsh7th/cmp-nvim-lsp') -- LSP source for nvim-cmp
	use('hrsh7th/cmp-buffer') -- Buffer completions
	use('hrsh7th/cmp-path') -- Path completions
	use('hrsh7th/cmp-cmdline') -- Command-line completions
	use('saadparwaiz1/cmp_luasnip') -- Snippet completions
	use('L3MON4D3/LuaSnip') -- Snippet engine
	use('mbbill/undotree') -- Undo tree branches, Undo history visualizer
	-- You can add other plugins here
end)
