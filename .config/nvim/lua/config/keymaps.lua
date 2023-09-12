-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- tmux-sessionizer to ctrl+f
map("n", "<C-f>", function()
  if not os.getenv("TMUX") then
    -- not in Tmux
    os.execute("tmux-sessionizer")
  else
    -- On Tmux
    os.execute("tmux neww tmux-sessionizer")
  end
end, { desc = "Tmux sessionizer" })
