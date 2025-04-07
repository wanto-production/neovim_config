return {

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<C-p>", ":Telescope find_files<CR>", { noremap = true, silent = true } },
    },
    -- change some prompt_position
    ---@class TelescopeConfig
    ---@field layout_strategy string
    ---@field layout_config table
    ---@field sorting_strategy string
    ---@field winblend integer
    ---@field file_ignore_patterns table
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = { "node_modules/*", "build/*", "%.log$", "%.min.js$", "target/*" },
      },
    },
  },
}
