return {
  {
    "gpanders/nvim-parinfer",
  },

	{
		"Olical/conjure",
		ft = { "clojure", "clojurescript", "edn" },
		dependencies = {
			{
				"PaterJason/cmp-conjure",
				config = function()
					local cmp = require("cmp")
					local config = cmp.get_config()

					table.insert(config.sources, {
						name = "buffer",
						option = {
							sources = {
								{ name = "conjure" },
							},
						},
					})

					cmp.setup(config)
				end,
			},
		},
		config = function()
			require("conjure.main").main()
			require("conjure.mapping")["on-filetype"]()
		end,
	},

	{
		"PaterJason/nvim-treesitter-sexp",
		config = function()
			require("treesitter-sexp").setup({
				keymaps = {
					commands = {
						slurp_left = ">(",
						slurp_right = ">)",
						barf_left = "<(",
						barf_right = "<)",
					},
				},
			})
		end,
	},
}
