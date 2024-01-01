local M = {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
    },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
    },
  },
}

function M.config()
  local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    ensure_installed = { "lua", "markdown", "javascript", "typescript" },
    ignore_install = { "" },
    sync_install = false,

    highlight = {
      enable = true,
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end

return M
