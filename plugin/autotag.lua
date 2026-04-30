vim.pack.add({ "https://github.com/windwp/nvim-ts-autotag" })
require("nvim-ts-autotag").setup({
    autotag = {
        enable = true,
    },
})

-- return {
--   "windwp/nvim-ts-autotag",
--   ft = { "html", "htmlangular" },
--   opts = {
--     autotag = {
--       enable = true,
--     },
--   },
-- }
