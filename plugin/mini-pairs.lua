vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.pack.add({
			"https://github.com/nvim-mini/mini.pairs",
		})
		require("mini.pairs").setup({
			modes = { command = true },
		})
	end,
})
