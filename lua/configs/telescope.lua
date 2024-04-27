require('telescope').setup({
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {
		
        },
        ["n"] = {
		
        },
      },
    },
  },
})

require('telescope').load_extension "file_browser"

