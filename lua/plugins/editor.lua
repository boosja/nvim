return {
	{
		"echasnovski/mini.pairs",
		version = "*",
		config = function()
			require("mini.pairs").setup()
		end,
	},

	{
		"HiPhish/rainbow-delimiters.nvim",
		config = function()
			require("rainbow-delimiters.setup").setup()
		end,
	},

	{
		"echasnovski/mini.surround",
		version = "*",
		config = function()
			require("mini.surround").setup()
		end,
	},

  {
    "RRethy/vim-illuminate",
  },

	{
		"christoomey/vim-tmux-navigator",
		lazy = true,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
		},
		keys = {
			{ "<C-h>", "<cmd><C-U>TmuxNavigateLeft<CR>" },
			{ "<C-j>", "<cmd><C-U>TmuxNavigateDown<CR>" },
			{ "<C-k>", "<cmd><C-U>TmuxNavigateUp<CR>" },
			{ "<C-l>", "<cmd><C-U>TmuxNavigateRight<CR>" },
		},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
    opts = {},
	},
}
