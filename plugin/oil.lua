vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
	win_options = {
		winhl = "Normal:Normal,Float:Float",
	},
	keymaps = {
		["g?"] = "actions.show_help",
		["<CR>"] = "actions.select",
		["<C-s>"] = "actions.select_vsplit",
		["<C-h>"] = false,
		["<M-h>"] = "actions.select_split",
		["<C-t>"] = "actions.select_tab",
		["<C-p>"] = "actions.preview",
		["<C-c>"] = "actions.close",
		["<C-l>"] = false,
		["lb"] = "actions.refresh",
		["-"] = "actions.parent",
		["_"] = "actions.open_cwd",
		["`"] = "actions.cd",
		["~"] = "actions.tcd",
		["gs"] = "actions.change_sort",
		["gx"] = "actions.open_external",
		["g."] = "actions.toggle_hidden",
		["g\\"] = "actions.toggle_trash",
		["yp"] = {
			desc = "Copy filepath to system clipboard",
			callback = function()
				require("oil.actions").copy_entry_path.callback()
				vim.fn.setreg("+", vim.fn.getreg(vim.v.register))
			end,
		},
		["yn"] = {
			desc = "Copy filename to system clipboard",
			callback = function()
				local oil = require("oil")
				local entry = oil.get_cursor_entry()

				if not entry then
					return
				end

				local filename = vim.fn.fnamemodify(entry.name, ":t")

				vim.fn.setreg("+", filename)
			end,
		},
	},
	use_default_keymaps = true,
})

local oil_win = nil
vim.keymap.set("n", "<leader>E", function()
	if oil_win and vim.api.nvim_win_is_valid(oil_win) then
		vim.api.nvim_win_close(oil_win, true)
		oil_win = nil
		return
	end

	vim.cmd("topleft vsplit")
	vim.cmd("vertical resize 40")
	require("oil").open()

	oil_win = vim.api.nvim_get_current_win()
end)
