return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = { "Window left" } },
      { "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = { "Window right" } },
      { "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = { "Window down" } },
      { "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = { "Window up" } },
    },
  },
}

--    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
--    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
--    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
--    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
