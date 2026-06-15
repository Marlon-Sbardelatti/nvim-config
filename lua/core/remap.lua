vim.g.mapleader = " "
vim.g.omni_sql_no_default_maps = 1

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-s>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "nzzzv")

vim.keymap.set("x", "<leader>p", [["_dp]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>z", '"zyy')
vim.keymap.set("v", "<leader>z", '"zy')

vim.keymap.set("n", "<leader>Z", '"zp')

vim.keymap.set("n", "<leader>np", "o<esc>p")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<c-c>", "<esc>")

vim.keymap.set("n", "<leader>TS", "<cmd>silent !tmux neww tmux-sessionizer.sh<cr>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>j", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<cr>zz")

vim.keymap.set("n", "<leader>st", [[:%s/\<<C-r><C-w>\>/]])
vim.keymap.set("n", "<leader>sT", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gi<Left><Left><Left>")

vim.keymap.set("n", "<leader>sg", [[:%s/]])

vim.keymap.set("n", "<leader>vs", function()
	vim.cmd("vsplit")
end)

vim.keymap.set("n", "<leader>hs", function()
	vim.cmd("split")
end)

vim.keymap.set("n", "<leader>tr", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*",
	callback = function()
		if
			((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
			and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
			and not require("luasnip").session.jump_active
		then
			require("luasnip").unlink_current()
		end
	end,
})

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>>", ":vertical resize +20<CR>")
vim.keymap.set("n", "<leader><", ":vertical resize -20<CR>")
vim.keymap.set("n", "<leader>+", ":resize +10<CR>")
vim.keymap.set("n", "<leader>-", ":resize -10<CR>")
vim.keymap.set("n", "<leader>Tn", ":tabnew <CR>")

-- iterate opened buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
