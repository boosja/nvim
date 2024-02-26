return {
  {
    "tpope/vim-fugitive",
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup {
        current_line_blame = true,
      }

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
      vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle line blame" })
    end,
  },

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
