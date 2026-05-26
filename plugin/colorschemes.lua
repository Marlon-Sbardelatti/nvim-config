vim.pack.add({ "https://github.com/casedami/neomodern.nvim" })
require("neomodern").setup({
	require("neomodern").setup({
		bg = "transparent",
		theme = "roseprime",

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

vim.pack.add({"https://github.com/savq/melange-nvim"})

vim.pack.add({"https://github.com/aktersnurra/no-clown-fiesta.nvim"})

-- USED COLORSCHEME
vim.cmd.colorscheme("moon")
