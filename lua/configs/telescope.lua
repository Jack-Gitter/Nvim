local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                [";"] = actions.close
            },
            n = {
                [";"] = actions.close
            },
        },
    },
    pickers = {},
    extensions = {
        file_browser = {
            mappings = {
                ["i"] = {
                    [";"] = actions.close
                },
                ["n"] = {
                    [";"] = actions.close
                },
            },
        },
    },
}
require('telescope').load_extension "file_browser"
