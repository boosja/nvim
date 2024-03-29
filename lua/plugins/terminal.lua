return {
  "akinsho/toggleterm.nvim",
  version = "v2.*",
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<C-t>]],
      direction = "float",
      float_opts = {
        border = "curved",
      }
    }
  end,
}
