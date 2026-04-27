vim.pack.add({ {
    src = "https://github.com/kylechui/nvim-surround",
    version = vim.version.range("4.x"), -- Use for stability; omit to use `main` branch for the latest features
} })

-- Optional: See `:h nvim-surround.configuration` and `:h nvim-surround.setup` for details
-- require("nvim-surround").setup({
--     -- Put your configuration here
-- })
-- return {
-- 	-- "tpope/vim-surround",
-- 	"kylechui/nvim-surround",
-- 	version = "*", -- Use for stability; omit to use `main` branch for the latest features
-- 	event = "VeryLazy",
-- 	config = function()
-- 		require("nvim-surround").setup({
-- 			-- Configuration here, or leave empty to use defaults
-- 		})
-- 	end,
-- }
