local wk = require("which-key")

-- Work with windows using the vim-tmux-navigator plugin
wk.register({
  ["<leader>w"] = {
    name = "+windows",
    h = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    l = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    j = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    k = { "<cmd> TmuxNavigateUp<CR>", "window up"},
  },
})


