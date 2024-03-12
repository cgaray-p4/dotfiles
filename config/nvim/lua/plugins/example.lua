return {
  -- add the rose pine theme
  { "rose-pine/neovim" },

  -- Configure LazyVim to load the rose-pine theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
  },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "typescript-language-server",
        "markdownlint",
      },
    },
  },
}
