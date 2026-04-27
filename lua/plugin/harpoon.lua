return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            menu = {
                width = vim.api.nvim_win_get_width(0) - 4,
            },
            settings = {
                save_on_toggle = true,
            },
        },
        keys = function()
            local keys = {
                {
                    "<leader>a",
                    function()
                        require("harpoon"):list():add()
                    end,
                    desc = "Harpoon File",
                },
                {
                    "<C-f>",
                    function()
                        local harpoon = require("harpoon")
                        harpoon.ui:toggle_quick_menu(harpoon:list())
                    end,
                    desc = "Harpoon Quick Menu",
                },
                {
                    "<C-m>",
                    function()
                        require("harpoon"):list():select(1)
                    end,
                    desc = "Go to next harpoon mark",
                },

                {
                    "<C-n>",
                    function()
                        require("harpoon"):list():select(2)
                    end,
                    desc = "Go to next harpoon mark",
                },
                {
                    "<C-e>",
                    function()
                        require("harpoon"):list():select(3)
                    end,
                    desc = "Go to next harpoon mark",
                },
                {
                    "<C-i>",
                    function()
                        require("harpoon"):list():select(4)
                    end,
                    desc = "Go to next harpoon mark",
                },
            }

            return keys
        end,
    },
}
