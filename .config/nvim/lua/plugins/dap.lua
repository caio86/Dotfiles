return {
  "mfussenegger/nvim-dap",
  -- Add keymap to clear all breakpoints
  -- stylua: ignore
  keys = {
    { "<leader>dT", function() require("dap").clear_breakpoints() end, desc = "Clear All Breakpoints" },
  },
}
