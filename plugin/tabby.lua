vim.api.nvim_create_autocmd("TabNewEntered", {
	callback = function()
		vim.pack.add({
			"https://github.com/nanozuki/tabby.nvim",
		})

		require("tabby").setup({
			preset = "tab_only",
			option = {
				theme = {
					fill = "TabLineFill",
					head = "TabLine",
					current_tab = "TabLineSel",
					tab = "TabLine",
					win = "TabLine",
					tail = "TabLine",
				},
				nerdfont = true,
				tab_name = {
					name_fallback = function(tabid)
						return tostring(tabid)
					end,
				},
				buf_name = { mode = "unique" },
			},
		})
	end,
})
