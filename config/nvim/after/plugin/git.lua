require("gitsigns").setup()
local wk = require("which-key")

wk.register({
   g = {
     name = "git",
     g = { "<CMD> LazyGit<CR>", "LazyGit" },
     c = { "<CMD> LazyGitConfig<CR>", "LazyGit config" },
     f = { "<CMD> LazyGitFilter<CR>", "LazyGit filter" },
     r = { "<CMD> LazyGitCurrentFile<CR>", "LazyGit current file" },
     i = { "<CMD> LazyGitFilterCurrentFile<CR>", "LazyGit filter current file" },
     p = { "<CMD> Gitsigns preview_hunk<CR>", "Gitsigns preview hunk" },
     t = { "<CMD> Gitsigns toggle_current_line_blame<CR>", "Gitsigns toggle current line blame" },
     u = { "<CMD> Git<CR>", "Fugitive git" },
     b = { "<CMD> Git blame<CR>", "Fugitive git blame" },
  },
}, { prefix = "<leader>" })
