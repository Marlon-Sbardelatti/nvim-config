return {
    {
        "tpope/vim-dadbod",
        cmd = { "DB", "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    },

    {
        "kristijanhusak/vim-dadbod-ui",
        cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
        dependencies = { "tpope/vim-dadbod" },
        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
        end,

        keys = {
            { "<leader>db", "<cmd>DBUIToggle<CR>", desc = "Toggle DBUI" },
        }
    },

    {
        "kristijanhusak/vim-dadbod-completion",
        ft = { "sql", "mysql", "plsql" },
        dependencies = { "tpope/vim-dadbod" },
    },
}
