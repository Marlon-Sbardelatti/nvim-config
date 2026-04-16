return {
    -- {
    --     "Marlon-Sbardelatti/zuca-nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         require("neomodern").setup({
    --         })

    --         require("neomodern").load()
    --         vim.cmd.colorscheme("roseprime")
    --     end,
    -- },
    --
    {
        "casedami/neomodern.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
                -- 'default' default background
                -- 'alt' darker background
                -- 'transparent' background is not set
                bg = "transparent",

                theme = "moon", -- 'moon' | 'iceclimber' | 'gyokuro' | 'hojicha' | 'roseprime'

                gutter = {
                    cursorline = false, -- highlight the cursorline in the gutter
                    dark = false,       -- highlight gutter darker than the Normal bg
                },

                diagnostics = {
                    darker = true,      -- use darker colors for diagnostics
                    undercurl = false,  -- use undercurl for diagnostics
                    background = false, -- use a background color for diagnostics
                },

                -- override colors, see #Customization below
                overrides = {
                    default = {},
                    hlgroups = {}
                }
            })
            -- Call `load` after `setup`
            require("neomodern").load()

            -- require("neomodern").load()
            -- vim.cmd.colorscheme("roseprime")
        end,
    },
}
