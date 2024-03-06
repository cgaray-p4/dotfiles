local wk = require("which-key")

wk.register({
   g = {
     name = "git",
     g = { "<CMD> LazyGit<CR>", "LazyGit" },
     c = { "<CMD> LazyGitConfig<CR>", "LazyGit config" },
     f = { "<CMD> LazyGitFilter<CR>", "LazyGit filter" },
     r = { "<CMD> LazyGitCurrentFile<CR>", "LazyGit current file" },
     i = { "<CMD> LazyGitFilterCurrentFile<CT>", "LazyGit filter current file" },
  },
}, { prefix = "<leader>" })
