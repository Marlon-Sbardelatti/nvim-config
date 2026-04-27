vim.pack.add({
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/ibhagwan/fzf-lua"
})

require("fzf-lua").setup({
    winopts = {
        layout = "horizontal",
        height = 0.9,
        width = 0.94,
        border = "solid",
        preview = {
            horizontal = "right:65%",
            border = "solid",
        },
    },
    fzf_opts = {
        ["--layout"] = "reverse",
    },
    keymap = {
        fzf = {
            ["ctrl-a"] = "select-all",
            ["ctrl-d"] = "deselect-all",
        },
    },
})

local fzf = require("fzf-lua")

-- Files
vim.keymap.set("n", "<leader>pf", fzf.files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>of", fzf.oldfiles, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>rs", fzf.resume, { desc = "Resume Picker" })

-- Grep
vim.keymap.set("n", "<leader>pg", fzf.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>gw", fzf.grep_cword, { desc = "Grep word" })
vim.keymap.set("n", "<leader>gW", fzf.grep_cWORD, { desc = "Grep WORD" })
vim.keymap.set("n", "<leader>bf", fzf.grep_curbuf, { desc = "Grep buffer" })

-- Buffer / search
vim.keymap.set("n", "<leader><leader>", fzf.blines, { desc = "Buffer Lines" })

-- Diagnostics
vim.keymap.set("n", "<leader>sd", fzf.diagnostics_document, { desc = "Buffer Diagnostics" })
vim.keymap.set("n", "<leader>sD", fzf.diagnostics_workspace, { desc = "Workspace Diagnostics" })

-- LSP
vim.keymap.set("n", "gd", fzf.lsp_definitions, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", fzf.lsp_declarations, { desc = "Goto Declaration" })
vim.keymap.set("n", "gr", fzf.lsp_references, { desc = "References" })
vim.keymap.set("n", "gI", fzf.lsp_implementations, { desc = "Goto Implementation" })
vim.keymap.set("n", "gy", fzf.lsp_typedefs, { desc = "Goto Type Definition" })
vim.keymap.set("n", "<leader>ss", fzf.lsp_document_symbols, { desc = "Document Symbols" })

-- UI / misc
vim.keymap.set("n", "<leader>cs", fzf.colorschemes, { desc = "Colorschemes" })
vim.keymap.set("n", "<leader>qf", fzf.quickfix, { desc = "Quickfix List" })
vim.keymap.set("n", "<leader>:", fzf.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>s/", fzf.search_history, { desc = "Search History" })

-- return {
--     {
--         "ibhagwan/fzf-lua",
--         dependencies = { "nvim-tree/nvim-web-devicons" },
--         opts = {
--             winopts = {
--                 layout = "horizontal",
--                 height = 0.9,
--                 width = 0.94,
--                 border = "solid",
--                 preview = {
--                     horizontal = "right:65%",
--                     -- border = "none"
--                     border = "solid",
--                 },
--             },
--             fzf_opts = {
--                 ["--layout"] = "reverse",
--             },
--             keymap = {
--                 fzf = {
--                     ["ctrl-a"] = "select-all",
--                     ["ctrl-d"] = "deselect-all",
--                 },
--             },
--         },
--         keys = function()
--             local fzf = require("fzf-lua")
--             return {
--                 { "<leader>pf",       function() fzf.files() end,                 desc = "Find Files" },
--                 { "<leader>gw",       function() fzf.grep_cword() end,            desc = "Grep Cursor Word" },
--                 { "<leader>gW",       function() fzf.grep_cWORD() end,            desc = "Grep Cursor Word" },
--                 { "<leader>pg",       function() fzf.live_grep() end,             desc = "Grep" },
--                 { "<leader>of",       function() fzf.oldfiles() end,              desc = "Recent Files" },
--                 { "<leader>rs",       function() fzf.resume() end,                desc = "Resume Picker" },
--                 { "<leader><leader>", function() fzf.blines() end,                desc = "Buffer Lines" },
--                 { "<leader>bf",       function() fzf.grep_curbuf() end,           desc = "Grep Current Buffer" },
--                 { "<leader>sD",       function() fzf.diagnostics_workspace() end, desc = "Diagnostics" },
--                 { "<leader>sd",       function() fzf.diagnostics_document() end,  desc = "Buffer Diagnostics" },
--                 { "gd",               function() fzf.lsp_definitions() end,       desc = "Goto Definition" },
--                 { "gD",               function() fzf.lsp_declarations() end,      desc = "Goto Declaration" },
--                 { "gr",               function() fzf.lsp_references() end,        desc = "References" },
--                 { "gI",               function() fzf.lsp_implementations() end,   desc = "Goto Implementation" },
--                 { "gy",               function() fzf.lsp_typedefs() end,          desc = "Goto Type Definition" },
--                 { "<leader>ss",       function() fzf.lsp_document_symbols() end,  desc = "Document Symbols" },
--                 { "<leader>cs",       function() fzf.colorschemes() end,          desc = "Colorschemes" },
--                 { "<leader>qf",       function() fzf.quickfix() end,              desc = "Quickfix List" },
--                 { "<leader>:",        function() fzf.command_history() end,       desc = "Command History" },
--                 { "<leader>s/",       function() fzf.search_history() end,        desc = "Search History" },
--             }
--         end,
--     },
-- }
