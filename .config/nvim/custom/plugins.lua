local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        "lua-language-server",
      }
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.presence"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      require "custom.configs.treesitter",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins
