return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("mason").setup()
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        ensure_installed = { "lua_ls", "tsserver", "html", "clojure_lsp", "eslint" },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      mason_lspconfig.setup_handlers({
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup({ capabilities })
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        -- ["lua_ls"] = function ()
        --   require("lspconfig").lua_ls.setup({ capabilities })
        -- end
      })

      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          -- Anything not supported by mason
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.zprint,
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gD", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })

      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
      vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show diagnostics for line" })
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
      vim.keymap.set("n", "<leader>cs", vim.diagnostic.show, { desc = "Show diagnostics for buffer" })
      vim.keymap.set("n", "<leader>ch", vim.diagnostic.hide, { desc = "Hide diagnostics for buffer" })
    end,
  },
}
