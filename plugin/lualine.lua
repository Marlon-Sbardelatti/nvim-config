vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

local function lsp_status()
    local clients = vim.lsp.get_clients({
        bufnr = vim.api.nvim_get_current_buf()
    })

    if next(clients) == nil then
        return " LSP: none"
    end

    local names = {}
    for _, client in ipairs(clients) do
        table.insert(names, client.name)
    end

    return " LSP: " .. table.concat(names, " ")
end

require("lualine").setup({
    options = {
        theme = 'auto',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },

        lualine_x = {
            lsp_status,
            'encoding',
            'fileformat',
            'filetype',
            -- function()
            --     return " " .. os.date("%R")
            -- end
        },

        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
})
