local lspconf = require("lspconfig")

return {
  -- python language
  lspconf.pyright.setup({
    settings = {
      path = "../../venv",
    },
  }),

  lspconf.denols.setup({
    cmd = { "deno", "lsp" },
    root_dir = lspconf.util.root_pattern("deno.json", "deno.jsonc"),
    init_options = {
      lint = true,
      unstable = true,
    },
  }),

  -- lua language
  lspconf.lua_ls.setup({
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT", -- Versi runtime Lua
          path = vim.split(package.path, ";"),
        },
        diagnostics = {
          globals = { "vim" }, -- Pastikan `vim` dikenali sebagai global
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
          enable = false, -- Nonaktifkan pengiriman data ke server
        },
      },
    },
  }),

  --- golang
  require("lspconfig").gopls.setup({
    settings = {
      gopls = {
        hints = {
          assignVariableTypes = false,
          compositeLiteralFields = false,
          compositeLiteralTypes = false,
          constantValues = false,
          functionTypeParameters = false,
          parameterNames = false,
          rangeVariableTypes = false,
        },
      },
    },
  }),
}
