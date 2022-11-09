
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function()
   use 'wbthomason/packer.nvim'
	use "RRethy/nvim-base16" 		-- colorscheme
	use "norcalli/nvim-colorizer.lua"-- highlighter
	use "windwp/nvim-autopairs" 		-- auto pair "" () {} 
	use "junegunn/limelight.vim" 		-- distraction free vim

	use "neovim/nvim-lspconfig" 		-- lsp servers
	use "hrsh7th/cmp-nvim-lsp" 		-- lsp server completion
	use "hrsh7th/cmp-buffer" 			-- buffer completion 
	use "hrsh7th/cmp-path" 				-- path completion 
	use "hrsh7th/nvim-cmp"  			-- neovim completion 

	use "L3MON4D3/LuaSnip" 				-- enable snippet 

	use {"kyazdani42/nvim-tree.lua",
			requires="kyazdani42/nvim-web-devicons"}

	use "nvim-lualine/lualine.nvim"
	use "akinsho/bufferline.nvim"

	use "nvim-treesitter/nvim-treesitter"

	use {"nvim-telescope/telescope.nvim",
			requires="nvim-lua/plenary.nvim"}

end,

config = {
  profile = {
    enable = true,
    threshold = 0 -- the amount in ms that a plugins load time must be over for it to be included in the profile

  }
}})
