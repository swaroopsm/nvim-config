return {
  {
    "Shatur/neovim-ayu",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-dark",
    },
  },

  {
    "mistweaverco/kulala.nvim",
    opts = {
      contenttypes = {
        ["application/json"] = {
          ft = "json",
          formatter = { "jq", "." },
          pathresolver = require("kulala.parser.jsonpath").parse,
        },
      },
    },
  },

  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },

  {
    "benfowler/telescope-luasnip.nvim",
  },
}
