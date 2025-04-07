return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").set_icon({
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh",
        },
        ["lazy-lock.json"] = {
          icon = "💤",
          name = "lazylock",
        },
      })
    end,
  },

  {
    "echasnovski/mini.icons",
    opts = {
      file = {
        [".go-version"] = { glyph = "", hl = "MiniIconsBlue" },
      },
      filetype = {
        gotmpl = { glyph = "󰟓", hl = "MiniIconsGrey" },
      },
    },
  },

  {
    "DaikyXendo/nvim-material-icon",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Pastikan dependensi dimuat
  },
}
