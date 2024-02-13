return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require "nvim-treesitter"
    local configs = require "nvim-treesitter.configs"

    configs.setup {
      auto_install = true, -- Auto install on entering unknown file linter
      ensure_installed = { "lua", "javascript", "typescript", "tsx", "clojure" },
      highlight = { enable = true },
      indent = { enable = true },
      autopairs = { enable = true },
    }
  end
}
