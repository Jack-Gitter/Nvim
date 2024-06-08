local actions = require('telescope.actions')

require('telescope').setup{
    defaults = {
        layout_config = {
            prompt_position = "top"
        },
        file_ignore_patterns = {
            "node_modules", "^.git/"
        },
        mappings = {
            i = {
                [";"] = actions.close,
                ["<s-return>"] = actions.select_default,
                ['<s-d>'] = actions.delete_buffer,
            },
            n = {
                [";"] = actions.close,
                ['<s-d>'] = actions.delete_buffer
            },
        },
    },
    pickers = {
        find_files = {
            previewer = false,
            hidden = true,
        },
        buffers = {
            previewer = false,
            show_current_buffer = false
        },
        git_branches = {
            previewer = false
        },
    },
    extensions = {
        file_browser = {
           previewer = false,
            mappings = {
                ["i"] = {
                    [";"] = actions.close,
                },
                ["n"] = {
                    [";"] = actions.close,
                },
            },
        },
    }
}
require('telescope').load_extension "file_browser"
require('telescope').load_extension "ui-select"
