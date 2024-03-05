-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("deadcolumn").setup({
  scope = "line", ---@type string|fun(): integer
  ---@type string[]|fun(mode: string): boolean
  modes = function(mode)
    return mode:find("^[ictRss\x13]") ~= nil
  end,
  blending = {
    threshold = 0.75,
    colorcode = "#000000",
    hlgroup = { "Normal", "bg" },
  },
  warning = {
    alpha = 0.4,
    offset = 0,
    colorcode = "#FF0000",
    hlgroup = { "Error", "bg" },
  },
  extra = {
    ---@type string?
    follow_tw = nil,
  },
})

require("obsidian")