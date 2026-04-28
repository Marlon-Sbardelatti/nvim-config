vim.pack.add({
    "https://github.com/tpope/vim-dadbod",
    "https://github.com/kristijanhusak/vim-dadbod-ui",
    "https://github.com/kristijanhusak/vim-dadbod-completion"
})

require("plugins.vim-dadbod").setup({
    init = function()
        vim.g.db_ui_use_nerd_fonts = 1
    end,
})

vim.keymap.set("n", "<leader>dp", "<cmd>DBUIToggle<CR>", { desc = "Toggle DBUI" })

-- return {
--     {
--         "tpope/vim-dadbod",
--         cmd = { "DB", "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
--     },

--     {
--         "kristijanhusak/vim-dadbod-ui",
--         cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
--         dependencies = { "tpope/vim-dadbod" },
--         init = function()
--             vim.g.db_ui_use_nerd_fonts = 1
--         end,

--         keys = {
--             { "<leader>db", "<cmd>DBUIToggle<CR>", desc = "Toggle DBUI" },
--         }
--     },

--     {
--         "kristijanhusak/vim-dadbod-completion",
--         ft = { "sql", "mysql", "plsql" },
--         dependencies = { "tpope/vim-dadbod" },
--     },
-- }
