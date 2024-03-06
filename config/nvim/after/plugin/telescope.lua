local builtin = require('telescope.builtin')
local wk = require("which-key")

require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
  },
  extensions = {
    -- ...
  }
}

wk.register({
   f = {
     name = "find",
     f = { builtin.find_files, "Find files" },
     g = { builtin.live_grep, "Live grep" },
     b = { builtin.buffers, "Find buffers" },
     h = { builtin.help_tags, "Search help" },
  },
}, { prefix = "<leader>" })
