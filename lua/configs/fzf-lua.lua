local actions = require "fzf-lua.actions"

require('fzf-lua').setup({
  buffers = {
      actions = {
        ["ctrl-d"] = { fn = actions.buf_del, reload = true }
      }
  }
})
