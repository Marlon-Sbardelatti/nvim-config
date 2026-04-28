return {
    -- vim.cmd("packadd nvim.undotree"),
    -- vim.keymap.set("n", "<leader>u", require("undotree").open)
    "mbbill/undotree",
    keys = {
        { "<leader>u", ":UndotreeToggle<CR>" },
    },
}
