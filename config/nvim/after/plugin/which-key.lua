local wk = require("which-key")

-- Work with files
wk.register({
  ["<leader>f"] = {
    name = "+file",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    n = { "<cmd>enew<cr>", "New File" },
  },
})

-- Work with configuration
wk.register({
    ["<leader>c"] = {
        name = "+config",
        p = { "<cmd>e ~/dotfiles/config/nvim/lua/cgaray/packer.lua<CR>", "Open Packer config" },
    },
})
