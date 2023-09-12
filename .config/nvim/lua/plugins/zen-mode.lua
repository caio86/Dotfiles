return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  config = function()
    require("zen-mode").setup({
      window = {
        backdrop = 0.95,
        width = 120,
        height = 1,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
        },
      },
      plugins = {
        gitsigns = { enabled = false },
        tmux = { enabled = false },
        twilight = { enabled = false },
      },
    })
  end,
  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
  },
}
