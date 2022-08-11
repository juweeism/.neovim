local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require'cmp' 

  cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body) -- For `luasnip` users.
      end,
    },

	 window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },

    mapping = cmp.mapping.preset.insert({
   	["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
    	["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    	["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    	["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    	["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    	},
		["<CR>"] = cmp.mapping.confirm { select = true },
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
			  cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
			  luasnip.expand_or_jump()
			elseif has_words_before() then
			  cmp.complete()
			else
			  fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
			  cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
			  luasnip.jump(-1)
			else
			  fallback()
			end
		end, { "i", "s" }),
    }),

	formatting = {
	  fields = {'menu', 'abbr', 'kind'},
	  format = function(entry, item)
		 local menu_icon = {
			nvim_lsp = 'λ',
			luasnip = '⋗',
			buffer = 'Ω',
			path = '🖫',
		 }
		 item.menu = menu_icon[entry.source.name]
		 return item
	end,

	},
	sources = cmp.config.sources({
		 { name = 'nvim_lsp', keyword_length = 3 },
		 { name = 'luasnip', keyword_length = 3 }, -- For luasnip users.
		 { name = 'buffer', keyword_length = 3 },
		 { name = 'path',},
	}),
	view = {                                                        
		  entries = {name = 'custom', selection_order = 'near_cursor' } 
	},

	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},

	experimental = {
		ghost_text = false,
		native_menu = false,
	},
  })

