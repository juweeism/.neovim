--- neovim settings ---

require("core.settings")
require("core.keys")
require("core.autocmd")

--- neovim plugins ---

require("jami.plugins")			-- plugin manager: packer 
require("jami.colorscheme") 	-- colorscheme
require("jami.colorizer")  	-- highlighter
require("jami.autopairs")		-- auto complete pairs ""(){}
require("jami.completions")	-- completion for snippet lsp
require("jami.nvimtree") 		-- file tree
require("jami.lualine")

require("lsp.config")
require("jami.treesitter")		-- treesitter

