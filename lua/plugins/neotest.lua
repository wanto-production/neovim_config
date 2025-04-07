return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-go",
      "nvim-neotest/nvim-nio", -- Pastikan ini ada
    },
    opts = function()
      return {
        log_level = vim.log.levels.INFO,
        consumers = {},
        icons = {
          passed = "✔",
          running = "▶",
          failed = "✖",
          skipped = "○",
          unknown = "?",
        },
        highlights = {
          passed = "NeotestPassed",
          running = "NeotestRunning",
          failed = "NeotestFailed",
          skipped = "NeotestSkipped",
        },
        floating = {
          border = "rounded",
          max_height = 0.6,
          max_width = 0.6,
        },
        strategies = {
          integrated = {
            width = 120,
            height = 40,
          },
        },
        run = {},
        summary = {},
        output = {},
        output_panel = {},
        quickfix = {},
        status = {},
        state = {},
        watch = {},
        diagnostic = {},
        projects = {},
        discovery = {},
        running = {},
        default_strategy = "integrated",
      }
    end,
  },
}
