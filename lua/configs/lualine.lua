require('lualine').setup {
  sections = {
    lualine_a = {'filename'},
    lualine_b = {'filetype'},
    lualine_c = {'branch'},
    lualine_x = {'diff'},
    lualine_y = {'diagnostics'},
    lualine_z = {},
  },
}
