return {
  -- Other plugin configurations
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        -- Enable auto-rename tag
        enable_check_bracket_line = false, -- Optional: Disable checking the same line for pair matching
        disable_filetype = { "TelescopePrompt", "vim" }, -- Optional: Disable for specific filetypes
      })
    end,
  },
}
