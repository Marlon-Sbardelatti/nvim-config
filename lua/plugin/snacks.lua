return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            bigfile = { enabled = false },
            dashboard = { enabled = false },
            explorer = { enabled = false },
            indent = { enabled = false },
            input = {
                enabled = true,
            },
            notifier = {
                enabled = true,
                timeout = 3000,
            },
            picker = {
                enabled = false,
                -- layout = {
                --     preset = "my_snack"
                -- },
                -- layouts = {
                --     my_snack = {
                --         layout = {
                --             box = 'horizontal',
                --             backdrop = false,
                --             width = 0.95,
                --             height = 0.9,
                --             border = 'solid',
                --             {
                --                 box = 'vertical',
                --                 { win = 'list',  title = ' Results ', title_pos = 'center', border = 'rounded' },
                --                 { win = 'input', height = 1,          border = 'rounded',   title = '{title} {live} {flags}', title_pos = 'center' },
                --             },
                --             {
                --                 win = 'preview',
                --                 title = '{preview:Preview}',
                --                 width = 0.60,
                --                 border = 'rounded',
                --                 title_pos = 'center',
                --             },
                --         },
                --     },
                -- }
            },
            quickfile = { enabled = false },
            scope = { enabled = false },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = false },
            styles = {
                notification = {
                    -- wo = { wrap = true } -- Wrap notifications
                }
            }
        },
        keys = {
            { "<leader>e",        function() Snacks.explorer() end,                    desc = "File Explorer" },
            -- { "<leader>pg",       function() Snacks.picker.grep() end,                 desc = "Grep" },
            -- { "<leader>sp",       function() Snacks.picker.smart() end,                desc = "Smart Find Files" },
            -- { "<leader>:",        function() Snacks.picker.command_history() end,      desc = "Command History" },
            -- { "<leader>pf",       function() Snacks.picker.files() end,                desc = "Find Files" },
            -- { "<leader>pp",       function() Snacks.picker.projects() end,             desc = "Projects" },
            -- { "<leader>rf",       function() Snacks.picker.recent() end,               desc = "Recent" },
            -- { "<leader><leader>", function() Snacks.picker.lines() end,                desc = "Buffer Lines" },
            -- { "<leader>bf",       function() Snacks.picker.grep_buffers() end,         desc = "Grep Open Buffers" },
            -- { '<leader>s/',       function() Snacks.picker.search_history() end,       desc = "Search History" },
            -- { "<leader>sd",       function() Snacks.picker.diagnostics() end,          desc = "Diagnostics" },
            -- { "<leader>qf",       function() Snacks.picker.qflist() end,               desc = "Quickfix List" },
            -- { "<leader>cs",       function() Snacks.picker.colorschemes() end,         desc = "Colorschemes" },
            -- { "<leader>sD",       function() Snacks.picker.diagnostics_buffer() end,   desc = "Buffer Diagnostics" },
            -- { "gd",               function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
            -- { "gD",               function() Snacks.picker.lsp_declarations() end,     desc = "Goto Declaration" },
            -- { "gr",               function() Snacks.picker.lsp_references() end,       nowait = true,                  desc = "References" },
            -- { "gI",               function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
            -- { "gy",               function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
            -- { "gai",              function() Snacks.picker.lsp_incoming_calls() end,   desc = "C[a]lls Incoming" },
            -- { "gao",              function() Snacks.picker.lsp_outgoing_calls() end,   desc = "C[a]lls Outgoing" },
            -- { "<leader>ss",       function() Snacks.picker.lsp_symbols() end,          desc = "LSP Symbols" },
            -- { "<leader>cR",       function() Snacks.rename.rename_file() end,          desc = "Rename File" },
            -- { "<leader>gB",       function() Snacks.gitbrowse() end,                   desc = "Git Browse",            mode = { "n", "v" } },
            -- { "<leader>gg",       function() Snacks.lazygit() end,                     desc = "Lazygit" },
            -- { "<c-w>z",           function() Snacks.zen() end,                         desc = "Toggle Zen Mode" },
            -- { "<c-w>f",           function() Snacks.zen.zoom() end,                    desc = "Toggle Zoom" },
            -- Top Pickers & Explorer
            -- { "<leader>bf",       function() Snacks.picker.buffers() end,               desc = "Buffers" },
            -- { "<leader>sS",       function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
            -- { "<leader>,",        function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
            -- { "<leader>n",       function() Snacks.picker.notifications() end,                           desc = "Notification History" },
            -- find
            -- { "<leader>fc",       function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
            -- { "<leader>fg",       function() Snacks.picker.git_files() end,                               desc = "Find Git Files" },
            -- git
            -- { "<leader>gb",       function() Snacks.picker.git_branches() end,          desc = "Git Branches" },
            -- { "<leader>gl",       function() Snacks.picker.git_log() end,               desc = "Git Log" },
            -- { "<leader>gL",       function() Snacks.picker.git_log_line() end,          desc = "Git Log Line" },
            -- { "<leader>gs",       function() Snacks.picker.git_status() end,            desc = "Git Status" },
            -- { "<leader>gS",       function() Snacks.picker.git_stash() end,             desc = "Git Stash" },
            -- { "<leader>GD",       function() Snacks.picker.git_diff() end,              desc = "Git Diff (Hunks)" },
            -- { "<leader>gf",       function() Snacks.picker.git_log_file() end,          desc = "Git Log File" },
            -- Grep
            -- { "<leader>sg",       function() Snacks.picker.grep() end,                                    desc = "Grep" },
            -- { "<leader>sw",       function() Snacks.picker.grep_word() end,                               desc = "Visual selection or word", mode = { "n", "x" } },
            -- search
            -- { '<leader>s"',       function() Snacks.picker.registers() end,             desc = "Registers" },
            -- { "<leader>sa",       function() Snacks.picker.autocmds() end,              desc = "Autocmds" },
            -- { "<leader>sb",       function() Snacks.picker.lines() end,                 desc = "Buffer Lines" },
            -- { "<leader>sC",       function() Snacks.picker.commands() end,              desc = "Commands" },
            -- { "<leader>sD",       function() Snacks.picker.diagnostics_buffer() end,    desc = "Buffer Diagnostics" },
            -- { "<leader>sh",       function() Snacks.picker.help() end,                  desc = "Help Pages" },
            -- { "<leader>sH",       function() Snacks.picker.highlights() end,            desc = "Highlights" },
            -- { "<leader>si",       function() Snacks.picker.icons() end,                 desc = "Icons" },
            -- { "<leader>sj",       function() Snacks.picker.jumps() end,                 desc = "Jumps" },
            -- { "<leader>sk",       function() Snacks.picker.keymaps() end,               desc = "Keymaps" },
            -- { "<leader>sl",       function() Snacks.picker.loclist() end,               desc = "Location List" },
            -- { "<leader>sm",       function() Snacks.picker.marks() end,                 desc = "Marks" },
            -- { "<leader>sM",       function() Snacks.picker.man() end,                   desc = "Man Pages" },
            -- { "<leader>sp",       function() Snacks.picker.lazy() end,                  desc = "Search for Plugin Spec" },
            -- { "<leader>sR",       function() Snacks.picker.resume() end,                desc = "Resume" },
            -- { "<leader>su",       function() Snacks.picker.undo() end,                  desc = "Undo History" },
            -- LSP
            -- Other
            -- { "<leader>.",        function() Snacks.scratch() end,                                        desc = "Toggle Scratch Buffer" },
            -- { "<leader>S",        function() Snacks.scratch.select() end,                                 desc = "Select Scratch Buffer" },
            -- { "<leader>n",        function() Snacks.notifier.show_history() end,                          desc = "Notification History" },
            -- { "<leader>bd",       function() Snacks.bufdelete() end,                                      desc = "Delete Buffer" },
            -- { "<leader>un",       function() Snacks.notifier.hide() end,                                  desc = "Dismiss All Notifications" },
            -- { "<c-G>",           function() Snacks.terminal.toggle() end,                                       desc = "Toggle Terminal" },
            -- { "<c-_>",           function() Snacks.terminal() end,                                       desc = "which_key_ignore" },
            -- { "]]",              function() Snacks.words.jump(vim.v.count1) end,                         desc = "Next Reference",           mode = { "n", "t" } },
            -- { "[[",              function() Snacks.words.jump(-vim.v.count1) end,                        desc = "Prev Reference",           mode = { "n", "t" } },
        },
        init = function()
            vim.api.nvim_create_autocmd("User", {
                pattern = "VeryLazy",
                callback = function()
                    -- Setup some globals for debugging (lazy-loaded)
                    _G.dd = function(...)
                        Snacks.debug.inspect(...)
                    end
                    _G.bt = function()
                        Snacks.debug.backtrace()
                    end
                    vim.print = _G.dd -- Override print to use snacks for `:=` command

                    -- Create some toggle mappings
                    -- Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
                    -- Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
                    -- Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
                    -- Snacks.toggle.diagnostics():map("<leader>ud")
                    -- Snacks.toggle.line_number():map("<leader>ul")
                    -- Snacks.toggle.option("conceallevel",
                    --     { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
                    -- Snacks.toggle.treesitter():map("<leader>uT")
                    -- Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map(
                    --     "<leader>ub")
                    -- Snacks.toggle.inlay_hints():map("<leader>uh")
                    -- Snacks.toggle.indent():map("<leader>ug")
                    -- Snacks.toggle.dim():map("<leader>uD")
                end,
            })
        end,
    }
}
