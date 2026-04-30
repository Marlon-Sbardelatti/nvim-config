vim.pack.add({
  "https://github.com/tpope/vim-dadbod",
  "https://github.com/kristijanhusak/vim-dadbod-ui",
  "https://github.com/kristijanhusak/vim-dadbod-completion",
})

vim.g.db_ui_use_nerd_fonts = 1

vim.keymap.set("n", "<leader>db", function()
  vim.cmd("DBUIToggle")
end, { desc = "Toggle DBUI" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    vim.cmd("packadd vim-dadbod-completion")
  end,
})

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
