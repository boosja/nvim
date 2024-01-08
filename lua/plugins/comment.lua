return {
  "numToStr/comment.nvim",
  lazy = false,
  config = function()
    local comment = require "Comment"
    comment.setup()
  end
}
