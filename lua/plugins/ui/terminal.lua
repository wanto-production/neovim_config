return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 20,
      shell = "zsh",
      open_mapping = [[<C-t>]],
      shade_terminals = true,
      direction = "float", -- Default float
      float_opts = {
        border = "rounded",
        width = 85,
        height = 25,
      },
    })

    -- Pindah antar tab
    vim.keymap.set("n", "<Tab>", "gt", { noremap = true, silent = true }) -- Next tab
    vim.keymap.set("n", "<S-Tab>", "gT", { noremap = true, silent = true }) -- Previous tab
  end,
  keys = {
    { "<C-t>", "<Cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal" },
    { "<C-1>", "<Cmd>1ToggleTerm direction=float<CR>", desc = "Buka terminal 1" },
    { "<C-2>", "<Cmd>2ToggleTerm direction=float<CR>", desc = "Buka terminal 2" },
    { "<C-3>", "<Cmd>3ToggleTerm direction=float<CR>", desc = "Buka terminal 3" },
    { "<C-S-t>", "<Cmd>ToggleTerm direction=tab<CR>", desc = "Toggle terminal tab" },
  },
}
