return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            winopts = {
                layout = "horizontal",
                height = 0.9,
                width = 0.94,
                border = "solid",
                preview = {
                    horizontal = "right:65%",
                    -- border = "none"
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
        },
        keys = function()
            local fzf = require("fzf-lua")
            return {
                { "<leader>pf",       function() fzf.files() end,                 desc = "Find Files" },
                { "<leader>gw",       function() fzf.grep_cword() end,            desc = "Grep Cursor Word" },
                { "<leader>gW",       function() fzf.grep_cWORD() end,            desc = "Grep Cursor Word" },
                { "<leader>pg",       function() fzf.live_grep() end,             desc = "Grep" },
                { "<leader>of",       function() fzf.oldfiles() end,              desc = "Recent Files" },
                { "<leader>rs",       function() fzf.resume() end,                desc = "Resume Picker" },
                { "<leader><leader>", function() fzf.blines() end,                desc = "Buffer Lines" },
                { "<leader>bf",       function() fzf.grep_curbuf() end,           desc = "Grep Current Buffer" },
                { "<leader>sD",       function() fzf.diagnostics_workspace() end, desc = "Diagnostics" },
                { "<leader>sd",       function() fzf.diagnostics_document() end,  desc = "Buffer Diagnostics" },
                { "gd",               function() fzf.lsp_definitions() end,       desc = "Goto Definition" },
                { "gD",               function() fzf.lsp_declarations() end,      desc = "Goto Declaration" },
                { "gr",               function() fzf.lsp_references() end,        desc = "References" },
                { "gI",               function() fzf.lsp_implementations() end,   desc = "Goto Implementation" },
                { "gy",               function() fzf.lsp_typedefs() end,          desc = "Goto Type Definition" },
                { "<leader>ss",       function() fzf.lsp_document_symbols() end,  desc = "Document Symbols" },
                { "<leader>cs",       function() fzf.colorschemes() end,          desc = "Colorschemes" },
                { "<leader>qf",       function() fzf.quickfix() end,              desc = "Quickfix List" },
                { "<leader>:",        function() fzf.command_history() end,       desc = "Command History" },
                { "<leader>s/",       function() fzf.search_history() end,        desc = "Search History" },
            }
        end,
    },
}
