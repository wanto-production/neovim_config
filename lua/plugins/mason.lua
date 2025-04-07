return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "pyright",
        "netcoredbg",
        --- golang
        "goimports",
        "gofumpt",
        "gomodifytags",
        "impl",
        "delve",
        --- !golang
      },
    },
  },
}
