require('lualine').setup {
  sections = {
    lualine_a = {'filename'},
    lualine_b = {'filetype'},
    lualine_c = {'branch'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'},
  },
}
