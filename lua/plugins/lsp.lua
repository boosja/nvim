return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      local mason = require "mason"

      mason.setup()
    end
  },

  { "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function(self, opts)
      local mason_lspconfig = require "mason-lspconfig"

      mason_lspconfig.setup({
        ensure_installed = { "lua_ls", "tsserver" }
      })
    end
  },

  { "neovim/nvim-lspconfig",
    lazy = false,
    config = function(self, opts)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require "lspconfig"

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
