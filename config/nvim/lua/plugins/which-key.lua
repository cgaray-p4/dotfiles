local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

M.config = function()
  local wk = require("which-key")

  local config = {
    vmappings = {
      ["z"] = {
        name = "Notes",
        ["l"] = { "<cmd>ObsidianLink<CR>", "Link a note" },
        ["n"] = {
          function()
            local title = vim.fn.input("Title: ")
            if title ~= "" then
              vim.cmd("ObsidianLinkNew " .. title)
            end
          end,
          "Create new linked note (in current dir)",
        },
      },
    },
    mappings = {
      ["z"] = {
        name = "Notes",
        ["b"] = { "<cmd>ObsidianBacklinks<cr>", "List backlinks" },
        ["l"] = { "<cmd>ObsidianQuickSwitch<cr>", "List notes" },
        ["n"] = {
          function()
            local title = vim.fn.input("Title: ")
            if title ~= "" then
              vim.cmd("ObsidianNew " .. title)
            end
          end,
          "Create new note (in current dir)",
        },
        ["o"] = { "<cmd>ObsidianOpen<cr>", "Open Obsidian" },
        ["p"] = { "<cmd>PeekToggle<cr>", "Toggle preview" },
        ["s"] = { "<cmd>ObsidianSearch<cr>", "Search notes" },
        ["t"] = { "<cmd>ObsidianToday<cr>", "Create/open note for today" },
        ["y"] = { "<cmd>ObsidianYesterday<cr>", "Create/open note for yesterday" },
        ["T"] = { "<cmd>ObsidianTemplate<cr>", "Insert template" },
      },
    },
  }
  wk.setup(config.setup)
  wk.register(config.mappings, config.opts)
  wk.register(config.vmappings, config.vopts)
end

return M
