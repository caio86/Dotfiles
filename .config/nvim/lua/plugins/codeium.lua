-- if true then
--   return {}
-- end

return {
  -- Remove the `use` here if you're using folke/lazy.nvim.
  {
    "Exafunction/codeium.vim",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, desc = "Codeium Accept" })

      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, desc = "Codeium Cycle+" })

      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, desc = "Codeium Cycle-" })

      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, desc = "Codeium Clear" })
    end,
  },
}
