vim.pack.add({ "https://github.com/casedami/neomodern.nvim" })
require("neomodern").setup({
	require("neomodern").setup({
		bg = "transparent",
		theme = "moon",

		gutter = {
			cursorline = false,
			dark = false,
		},

		diagnostics = {
			darker = true,
			undercurl = false,
			background = false,
		},

		overrides = {
			default = {},
			hlgroups = {},
		},
	}),
})
vim.cmd.colorscheme("moon")

