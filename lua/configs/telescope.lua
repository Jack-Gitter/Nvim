local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                [";"] = actions.close,
                ["<s-return>"] = actions.select_default,
                ['<s-d>'] = actions.delete_buffer
            },
            n = {
                [";"] = actions.close,
                ['<s-d>'] = actions.delete_buffer
            },
        },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = false
        },
        buffers = {
            theme = "dropdown",
            previewer = false,
            show_current_buffer = false
        },
        git_branches = {
            theme = "dropdown",
            previewer = false
        },
    },
    extensions = {
        file_browser = {
            theme = "dropdown",
            previewer = false,
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
