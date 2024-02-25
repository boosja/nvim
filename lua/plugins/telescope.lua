return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require "telescope.builtin"
      local wk = require "which-key"

      -- wk.register({
      --   ["<leader>"] = {
      --     f = {
      --       name = "+file",
      --       f = { "<leader>ff", "Find git file", ":Telescope git_files" },
      --     }
      --   }
      -- })

      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find file" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find buffer "})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags" })
      vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = "Registers" })
      vim.keymap.set('n', '<C-r>', builtin.resume, { desc = "Resume previous telescope" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local telescope = require "telescope"

      telescope.setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      telescope.load_extension("ui-select")
    end
  },
}
