vim.pack.add({
    "https://github.com/folke/snacks.nvim"
})

require("snacks").setup({
    input = {
        enabled = true,
    },
    notifier = {
        enabled = true,
        timeout = 5000,
    },
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    picker = { enabled = false },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
})

vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "File Explorer" })
