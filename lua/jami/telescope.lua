require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
		 "yay", "node_modules", "build", "dist", "yarn.lock"
	 }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
	   hidden = true
    }
  },
  extensions = {
    -- ...
  },
}
