vim.pack.add({
	"https://github.com/nvim-lua/plenary.nvim",
	{ src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
})

local harpoon = require("harpoon")

harpoon.setup({
	menu = {
		width = vim.api.nvim_win_get_width(0) - 4,
	},
	settings = {
		save_on_toggle = true,
	},
})

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, { desc = "Harpoon File" })

vim.keymap.set("n", "<C-f>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Quick Menu" })

vim.keymap.set("n", "<C-m>", function()
	harpoon:list():select(1)
end, { desc = "Go to harpoon mark 1" })

vim.keymap.set("n", "<C-n>", function()
	harpoon:list():select(2)
end, { desc = "Go to harpoon mark 2" })

vim.keymap.set("n", "<C-e>", function()
	harpoon:list():select(3)
end, { desc = "Go to harpoon mark 3" })

vim.keymap.set("n", "<C-i>", function()
	harpoon:list():select(4)
end, { desc = "Go to harpoon mark 4" })
