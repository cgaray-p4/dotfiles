return {
  "ahmedkhalf/project.nvim",
  opts = {
    manual_mode = false,
    -- Methods of detecting the root directory. **"lsp"** uses the native neovim
    -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
    -- order matters: if one is not detected, the other is used as fallback. You
    -- can also delete or rearangne the detection methods.
    detection_methods = { "lsp", "pattern" },

    -- All the patterns used to detect root dir, when **"pattern"** is in
    -- detection_methods
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
  },
  event = "VeryLazy",
  config = function(_, opts)
    require("project_nvim").setup(opts)
    require("lazyvim.util").on_load("telescope.nvim", function()
      require("telescope").load_extension("projects")
    end)
  end,
  keys = {
    { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
  },
}
