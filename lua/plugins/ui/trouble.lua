return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    cmd = "Trouble",
    opts = { use_diagnostic_signs = true },
    keys = {
      {
        "<C-d>",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
    },
  },

  -- disable trouble
  { "folke/trouble.nvim", enabled = true },
}
