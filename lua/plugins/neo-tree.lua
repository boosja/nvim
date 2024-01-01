return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Needs NerdFont
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- Optional image support in preview window
  },
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree toggle filesystem reveal float<CR>', { silent = true })

    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behavior = "open_current"
      }
    })
  end
}
