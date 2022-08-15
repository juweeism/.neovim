require("nvim-tree").setup({
	sort_by = "case_sensitive",
  	view = {
		hide_root_folder = false,
		adaptive_size = false,
		mappings = {
      list = {
			{ key = "u", action = "dir_up" },
      },
    },
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true
	}
})
