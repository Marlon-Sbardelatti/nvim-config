vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

vim.pack.add({
	{
		src = "https://github.com/mistweaverco/kulala.nvim",
		version = "v5.3.4",
	},
})

require("kulala").setup({
	global_keymaps = true,
	global_keymaps_prefix = "<leader>R",
	kulala_keymaps_prefix = "",
})
