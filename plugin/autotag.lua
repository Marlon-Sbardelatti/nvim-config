vim.pack.add({
	{
		src = "https://github.com/windwp/nvim-ts-autotag",
		ft = { "html", "htmlangular", "javascriptreact", "typescriptreact", "vue", "svelte" },
	},
})

require("nvim-ts-autotag").setup({
	enable = true,
})
