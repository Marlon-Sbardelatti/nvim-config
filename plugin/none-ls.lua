vim.pack.add({
	"https://github.com/nvimtools/none-ls-extras.nvim",
	"https://github.com/nvimtools/none-ls.nvim",
})

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		require("none-ls.formatting.ruff_format"),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.biome,
		null_ls.builtins.diagnostics.erb_lint,
		null_ls.builtins.diagnostics.kube_linter,
		null_ls.builtins.completion.spell.with({
			filetypes = { "text", "markdown", "gitcommit" },
		}),
	},
})

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
