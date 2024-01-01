--vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {}
}

-- function M.config()
--  local ibl = require "ibl"
--
--  ibl.setup {
--    indent = {
--      char = ""
--    }
--  }
--end

--return M

-- return {
--  { "lukas-reineke/indent-blankline.nvim",
--  main = "ibl",
--  opts = {
--      show_current_context = true,
--      char = "",
--      char_highlight_list = {
--          "IndentBlanklineIndent1",
--          "IndentBlanklineIndent2",
--      },
--      space_char_highlight_list = {
--          "IndentBlanklineIndent1",
--          "IndentBlanklineIndent2",
--      },
--      show_trailing_blankline_indent = false,
--    }
--  },
--}
