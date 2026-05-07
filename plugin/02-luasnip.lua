vim.pack.add({
	"https://github.com/onsails/lspkind.nvim",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/rafamadriz/friendly-snippets",
})

local ls = require("luasnip")

ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
})

require("luasnip.loaders.from_vscode").lazy_load()

-- Snippets
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local f = ls.function_node

ls.add_snippets("javascript", {
	s("gid", {
		t("let "),
		i(1),
		t(' = document.getElementById("'),
		i(2),
		t('")'),
	}),
	s("gcl", {
		t("let "),
		i(1),
		t(' = document.getElementsByClassName("'),
		i(2),
		t('")'),
	}),
	s("cl", {
		t("console.log("),
		i(1),
		t(")"),
	}),
})
ls.add_snippets("typescript", {
	s("gid", {
		t("let "),
		i(1),
		t(' = document.getElementById("'),
		i(2),
		t('")'),
	}),
	s("gcl", {
		t("let "),
		i(1),
		t(' = document.getElementsByClassName("'),
		i(2),
		t('")'),
	}),
	s("cl", {
		t("console.log("),
		i(1),
		t(")"),
	}),
})
ls.add_snippets("html", {
	s("sso", {
		t('<script src="'),
		i(1),
		t('"></script> '),
	}),
})

ls.add_snippets("go", {
	s("ifen", {
		t({ "if err != nil {", "\t" }),
		i(1, ""),
		t({ "", "}" }),
	}),
})

-- Keymaps
vim.keymap.set({ "i", "s" }, "<C-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })
