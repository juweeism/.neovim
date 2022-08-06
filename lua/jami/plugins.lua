local use = require('packer').use

require('packer').startup(function()
	use "RRethy/nvim-base16" 		-- colorscheme
	use "norcalli/nvim-colorizer.lua"-- highlighter
	use "windwp/nvim-autopairs" 		-- auto pair "" () {} 
	use {"junegunn/limelight.vim"} 		-- distraction free vim

	use "neovim/nvim-lspconfig" 		-- lsp servers
	use "hrsh7th/cmp-nvim-lsp" 		-- lsp server completion
	use "hrsh7th/cmp-buffer" 			-- buffer completion 
	use "hrsh7th/cmp-path" 				-- path completion 
	use "hrsh7th/nvim-cmp"  			-- neovim completion 

	use "L3MON4D3/LuaSnip" 				-- enable snippet 

	use "kyazdani42/nvim-tree.lua"
	use "kyazdani42/nvim-web-devicons"
	use "nvim-lualine/lualine.nvim"

	use "nvim-treesitter/nvim-treesitter"

end)
