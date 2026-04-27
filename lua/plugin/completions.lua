return {
    {
        "onsails/lspkind.nvim",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
        },
    },
    {
        'saghen/blink.cmp',
        dependencies = {
            'rafamadriz/friendly-snippets',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
        version = '1.*',
        opts = {
            keymap = {
                preset = 'default',
                ['<C-k>'] = { 'snippet_forward', 'fallback' },
                ['<C-j>'] = { 'snippet_backward', 'fallback' },
            },
            appearance = { nerd_font_variant = 'mono' },
            completion = { documentation = { auto_show = false } },
            snippets = { preset = 'luasnip' },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
                per_filetype = {
                    sql = { 'snippets', 'dadbod', 'buffer' }
                },
                providers = {
                    dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
                }
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" },
        config = function(_, opts)
            require('blink.cmp').setup(opts)
            -- Load VSCode-style snippets
            require("luasnip.loaders.from_vscode").lazy_load()
            -- Load custom snippets
            require("plugins.luasnip")
        end
    },

    {
        { "saadparwaiz1/cmp_luasnip" },
    },
    {
        { "rafamadriz/friendly-snippets" },
    },
}
