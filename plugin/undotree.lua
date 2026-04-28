vim.pack.add({
    "https://github.com/mbbill/undotree",
})

vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", {
    desc = "Toggle Undotree",
})

-- return {
--     -- vim.cmd("packadd nvim.undotree"),
--     -- vim.keymap.set("n", "<leader>u", require("undotree").open)
--     "mbbill/undotree",
--     keys = {
--         { "<leader>u", ":UndotreeToggle<CR>" },
--     },
-- }
