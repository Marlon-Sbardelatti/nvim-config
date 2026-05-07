-- fugitive
vim.pack.add({
	"https://github.com/tpope/vim-fugitive",
})
-- require("vim-fugitive").setup()
vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git Status" })

-- gitsigns
vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
	callback = function()
		-- if Loaded then return end
		-- Loaded = true
		vim.pack.add({
			"https://github.com/lewis6991/gitsigns.nvim",
		})

		require("gitsigns").setup()
		local gitsigns = require("gitsigns")

		vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview Hunk" })
		vim.keymap.set("n", "<leader>gt", gitsigns.toggle_current_line_blame, { desc = "Toggle Blame" })
	end,
})
