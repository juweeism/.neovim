-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local Colors = {
  white          = '#ffffff',
  darkestgreen   = '#005f00',
  brightgreen    = '#afdf00',
  darkestcyan    = '#005f5f',
  mediumcyan     = '#87dfff',
  darkestblue    = '#005f87',
  darkred        = '#870000',
  brightred      = '#df0000',
  brightorange   = '#ff8700',
  gray1          = '#000001',
  gray2          = '#262626',
  gray4          = '#454545',
  gray5          = '#606060',
  gray7          = '#9e9e9e',
  gray10         = '#f0f0f0',
}

local powerline_theme = {
  normal = {
    a = { fg = Colors.darkestgreen, bg = Colors.brightgreen, gui = 'bold' },
    b = { fg = Colors.gray10, bg = Colors.gray4 },
    c = { fg = Colors.gray7, bg = Colors.gray1 },
  },
  insert = {
    a = { fg = Colors.darkestcyan, bg = Colors.white, gui = 'bold' },
    b = { fg = Colors.darkestcyan, bg = Colors.mediumcyan },
    c = { fg = Colors.darkestcyan, bg = Colors.gray1 },
  },
  visual = { a = { fg = Colors.darkred, bg = Colors.brightorange, gui = 'bold' } },
  replace = { a = { fg = Colors.white, bg = Colors.brightred, gui = 'bold' } },
  inactive = {
    a = { fg = Colors.gray4, bg = Colors.gray2, gui = 'bold' },
    b = { fg = Colors.gray4, bg = Colors.gray2 },
    c = { bg = Colors.gray1, fg = Colors.gray2 },
  },
} 


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = powerline_theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'diagnostics', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'location'},
    lualine_z = {}
  },
  tabline = {
	  lualine_a = {'filename'},
  	  lualine_b = {},
  	  lualine_c = {},
     lualine_x = {
		  {
'buffers', 
       show_filename_only = true,   -- Shows shortened relative path when set to false.
      hide_filename_extension = false,   -- Hide filename extension when set to true.
      show_modified_status = true, -- Shows indicator when the buffer is modified.

      mode = 2, -- 0: Shows buffer name
                -- 1: Shows buffer index
                -- 2: Shows buffer name + buffer index
                -- 3: Shows buffer number
                -- 4: Shows buffer name + buffer number

      max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
                                          -- it can also be a function that returns
                                          -- the value of `max_length` dynamically.
      filetype_names = {
        TelescopePrompt = 'Telescope',
        dashboard = 'Dashboard',
        packer = 'Packer',
        fzf = 'FZF',
        alpha = 'Alpha'
      }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

      buffers_color = {
        -- Same values as the general color option can be used here.
        active = 'lualine_b_normal',     -- Color for active buffer.
        inactive = 'lualine_b_inactive', -- Color for inactive buffer.
      },

      symbols = {
        modified = ' ●',      -- Text to show when the buffer is modified
        alternate_file = '#', -- Text to show to identify the alternate file
        directory =  '',     -- Text to show when the buffer is a directory
      },
		  }
	},
     lualine_y = {},
     lualine_z = {}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
