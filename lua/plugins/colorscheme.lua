local name = "vscode"

return {
  -- {
  --   "Mofiqul/vscode.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   name = name,
  --   config = function()
  --     local status_ok, _ = pcall(vim.cmd.colorscheme, name)
  --     if not status_ok then
  --       return
  --     end
  --   end,
  -- },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({})
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },
}
