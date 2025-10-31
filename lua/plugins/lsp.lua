return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup({
        ensure_installed = { "omnisharp", },
        handlers = {
          function(server_name) -- default handler (optional)
            lspconfig[server_name].setup({})
          end
        }
      })
    end,
    opts = {
      servers = {
        lemminx = {
          cmd = { "lemminx" }, 
          filetypes = { "xml", "xaml" },
          settings = {
            xml = {
              format = {
                enabled = true,
                insertSpaces = true,
                tabSize = 4,
                splitAttributes = "preserve",
                joinContentLines = true,
                preservedNewlines = 1,
              },
            },
          },
        },
      },
    }
  }
}
