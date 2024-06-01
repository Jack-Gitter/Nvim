local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        },
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
                    ["<s-a>"] = fb_actions.create,
                    ["<s-m>"] = fb_actions.move
                },
                ["n"] = {
                    [";"] = actions.close,
                    ["a"] = fb_actions.create,
                    ["m"] = fb_actions.move
                },
            },
        },
        ["ui-select"] = { require("telescope.themes").get_dropdown { } }
    }
}
require('telescope').load_extension "file_browser"
require('telescope').load_extension "ui-select"
