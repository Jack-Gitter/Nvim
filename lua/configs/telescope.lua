local actions = require('telescope.actions')

require('telescope').setup{
    defaults = {
        sorting_strategy = "ascending",
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
            },
            n = {
                [";"] = actions.close,
            },
        },
    },
    pickers = {
        find_files = {
            sorting_strategy = "ascending",
            previewer = false,
            hidden = true,
        },
        live_grep = {
            additional_args = function(opts)
                return {"--hidden"}
            end
        },
        buffers = {
            sorting_strategy = "ascending",
            previewer = false,
            show_current_buffer = false,
            mappings = {
                i = {
                    ['<s-d>'] = actions.delete_buffer
                },
                n = {
                    ['<s-d>'] = actions.delete_buffer
                },
	    }
        },
        git_branches = {
            sorting_strategy = "ascending",
            previewer = false
        },
    },
    extensions = {
        file_browser = {
           sorting_strategy = "ascending",
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
