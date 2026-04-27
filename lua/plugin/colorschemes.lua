vim.pack.add({ "https://github.com/casedami/neomodern.nvim" })
require("neomodern").setup({
    require("neomodern").setup({
        bg = "transparent",
        theme = "roseprime",

        gutter = {
            cursorline = false,
            dark = false,
        },

        diagnostics = {
            darker = true,
            undercurl = false,
            background = false,
        },

        overrides = {
            default = {},
            hlgroups = {}
        }
    })

})
vim.cmd.colorscheme("roseprime")

-- return {
--     -- {
--     --     "Marlon-Sbardelatti/zuca-nvim",
--     --     lazy = false,
--     --     priority = 1000,
--     --     config = function()
--     --         require("neomodern").setup({
--     --         })

--     --         require("neomodern").load()
--     --         vim.cmd.colorscheme("roseprime")
--     --     end,
--     -- },
--     --
--     {
--         "casedami/neomodern.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             require("neomodern").setup({
--                 -- 'default' default background
--                 -- 'alt' darker background
--                 -- 'transparent' background is not set
--                 bg = "transparent",

--                 theme = "roseprime", -- 'moon' | 'iceclimber' | 'gyokuro' | 'hojicha' | 'roseprime'

--                 gutter = {
--                     cursorline = false, -- highlight the cursorline in the gutter
--                     dark = false,       -- highlight gutter darker than the Normal bg
--                 },

--                 diagnostics = {
--                     darker = true,      -- use darker colors for diagnostics
--                     undercurl = false,  -- use undercurl for diagnostics
--                     background = false, -- use a background color for diagnostics
--                 },

--                 -- override colors, see #Customization below
--                 overrides = {
--                     default = {},
--                     hlgroups = {}
--                 }
--             })
--             -- Call `load` after `setup`
--             require("neomodern").load()

--             local function lighten(hex, percent)
--                 hex = hex:gsub("#", "")
--                 local r = tonumber(hex:sub(1, 2), 16)
--                 local g = tonumber(hex:sub(3, 4), 16)
--                 local b = tonumber(hex:sub(5, 6), 16)

--                 r = math.min(255, r + (255 - r) * percent)
--                 g = math.min(255, g + (255 - g) * percent)
--                 b = math.min(255, b + (255 - b) * percent)

--                 return string.format("#%02x%02x%02x", r, g, b)
--             end

--             local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
--             local bg = normal.bg and string.format("#%06x", normal.bg) or "#000000"

--             local lighter_bg = lighten(bg, 0.03) -- 8% mais claro

--             -- vim.api.nvim_set_hl(0, "FzfLuaPreviewNormal", {
--             --     bg = lighter_bg,
--             -- })

--             -- vim.api.nvim_set_hl(0, "FzfLuaPreviewBorder", {
--             --     bg = lighter_bg,
--             -- })

--             -- require("neomodern").load()
--             -- vim.cmd.colorscheme("roseprime")
--         end,
--     },
-- }
