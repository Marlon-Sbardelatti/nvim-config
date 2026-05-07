vim.filetype.add({
  extension = {
    ['http'] = 'http',
  },
})

vim.pack.add({
  "https://github.com/mistweaverco/kulala.nvim",
})

require("kulala").setup({
  global_keymaps = true,
  global_keymaps_prefix = "<leader>R",
  kulala_keymaps_prefix = "",
})

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "http", "rest" },
--   callback = function()
--     vim.keymap.set("n", "<leader>Rs", function()
--       require("kulala").run()
--     end, { desc = "Send request", buffer = true })
--
--     vim.keymap.set("n", "<leader>Ra", function()
--       require("kulala").run_all()
--     end, { desc = "Send all requests", buffer = true })
--   end,
-- })
