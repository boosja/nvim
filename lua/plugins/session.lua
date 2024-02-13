return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
      })
    end,
  },

  {
    "rmagatti/session-lens",
    dependencies = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
    config = function ()
      require("session-lens").setup({
        path_display = { "shorten" },
      })

      vim.keymap.set('n', '<leader>gp', '<cmd>lua require("session-lens").search_session()<cr>', { noremap = true, silent = true })
    end
  }
}
