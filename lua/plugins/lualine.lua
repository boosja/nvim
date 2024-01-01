local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

local empty = {
  function()
    return ' '
  end,
  padding = 0,
  color = 'Normal',
}

return {
	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
		opts = {
			options = {
				theme = 'auto',
				component_separators = '',
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = {
          empty,
          { 'mode', separator = { left = '', right = '' } },
				},
				lualine_b = { 'filename' },
				lualine_c = { { 'branch', icons_enabled = false } },
				lualine_x = {},
				lualine_y = { 'progress' },
				lualine_z = {
					{ 'location', separator = { left = '', right = '' }, padding = 0 },
          empty,
				},
			},
			inactive_sections = {},
			tabline = {},
			extensions = {},
		}
	}
}
