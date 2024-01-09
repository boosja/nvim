return {
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      vim.g.lazygit_floating_window_border_chars = { '', '', '', '', '', '', '', '' }

      vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', {})
    end
  }
}
