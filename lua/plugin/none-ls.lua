return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    -- event = "BufWinEnter",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                -- null_ls.builtins.completion.spell,
                require("none-ls.formatting.ruff_format"),
                require("none-ls.diagnostics.ruff"),
                null_ls.builtins.formatting.biome,
                null_ls.builtins.diagnostics.erb_lint,
                null_ls.builtins.diagnostics.kube_linter,
            },
        })

        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
    end,

    keys = {
        { "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true } },
    },
}
