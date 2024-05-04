local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                [";"] = actions.close,
                ["<s-return>"] = actions.select_default
            },
            n = {
                [";"] = actions.close,
                ['<s-d>'] = actions.delete_buffer
            },
        },
    },
    pickers = {
        buffers = {
            show_current_buffer = false
        }
    },
    extensions = {
        file_browser = {
            mappings = {
                ["i"] = {
                    [";"] = actions.close,
                },
                ["n"] = {
                    [";"] = actions.close
                },
            },
        },
    },
}
require('telescope').load_extension "file_browser"
