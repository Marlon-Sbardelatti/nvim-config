vim.filetype.add({
	extension = {
		["http"] = "http",
		["grpc"] = "grpc",
	},
})

vim.pack.add({
	{
		src = "https://github.com/mistweaverco/kulala.nvim",
        -- version = 'v5.3.4'
	},
})

require("kulala").setup({
	global_keymaps = true,
	global_keymaps_prefix = "<leader>R",
	kulala_keymaps_prefix = "",
	debug = true,
})

-- vim.filetype.add({
-- 	extension = {
-- 		["http"] = "http",
-- 	},
-- })
--
-- vim.pack.add({
-- 	{
-- 		src = "https://github.com/mistweaverco/kulala.nvim",
-- 		version = "v6.2.0",
-- 	},
-- })
--
-- local kulala_dir = vim.fn.stdpath("data") .. "/site/pack/core/opt/kulala.nvim"
--
-- if vim.fn.isdirectory(kulala_dir) == 1 then
-- 	vim.cmd("packadd kulala.nvim")
-- 	local ok, kulala = pcall(require, "kulala")
-- 	if ok then
-- 		kulala.setup({
-- 			global_keymaps = true,
-- 			global_keymaps_prefix = "<leader>R",
-- 			kulala_keymaps_prefix = "",
-- 			debug = true,
-- 		})
-- 	end
-- else
-- 	vim.schedule(function()
-- 		vim.notify("Kulala is downloading modules. Please restart Neovim when complete.", vim.log.levels.INFO)
-- 	end)
-- end
