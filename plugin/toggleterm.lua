vim.pack.add({ "https://github.com/akinsho/toggleterm.nvim" })

require("toggleterm").setup({
	size = 18,
	open_mapping = [[<c-x>]],
	shade_filetypes = {},
	shade_terminals = false,
	shading_factor = "1",
	start_in_insert = true,
	persist_size = true,
	direction = "float",
})

vim.keymap.set("n", "<leader>gg", function()
  vim.cmd("ToggleTerm direction=float")
  vim.cmd("startinsert")
  vim.fn.chansend(vim.b.terminal_job_id, "lazygit\n")
end, { desc = "Toggle LazyGit" })
