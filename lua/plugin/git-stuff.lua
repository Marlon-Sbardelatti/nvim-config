return {
    {
        "tpope/vim-fugitive",
        md = { "Git", "G" },
        keys = {
            { "<leader>gs", "<cmd>Git<CR>", desc = "Git Status" },
        },
    },

    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {},
        keys = {
            { "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>",              desc = "Preview Hunk" },
            { "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Blame" },
        },
    },
}
