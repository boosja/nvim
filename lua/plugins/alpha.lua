return {
  "goolord/alpha-nvim",
  -- config = function()
  --   local dashboard = require "alpha.themes.dashboard"
  --   require('alpha').setup(dashboard.config)
  -- end
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    require "alpha.term"

    dashboard.section.terminal.command = vim.fn.stdpath("config") .. "/lua/nvim-logo -t"
    dashboard.section.terminal.width = 70
    dashboard.section.terminal.height = 10
    dashboard.section.terminal.opts.redraw = true
    dashboard.section.terminal.opts.window_config.zindex = 1

    dashboard.opts.layout = {
      dashboard.section.terminal,
      { type = "padding", val = 4 },
    }

    return dashboard
  end,
  config = function(_, dashboard)
    if vim.o.filetype == 'lazy' then
      vim.cmd.close()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'AlphaReady',
        callback = function()
          require('lazy').show()
        end,
      })
    end

    local alpha = require "alpha"
    alpha.setup(dashboard.opts)
  end
}
