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
ls.add_snippets("go", {
	s("ifen", {
		t({ "if err != nil {", "\t" }),
		i(1, ""),
		t({ "", "}" }),
	}),
})

local atria_snippets = {
	s("atria", {
		t({ "359214da-a3ee-4fc6-9903-3645dd8dd178" }),
	}),
	s("orga", {
		t({ "ea726071-851b-477e-8002-402ebabe8769" }),
	}),
	s("marlon", {
		t({ "13215292-3d8f-47ae-9651-277da5a59186" }),
	}),
	s("sofia", {
		t({ "864f7fe8-4874-4447-b26e-083668ec9670" }),
	}),
	s("iago", {
		t({ "e80fe00c-5be5-44ed-b5b6-6026cf66fee0" }),
	}),
	s("powerbi", {
		t({ "a7617541-4bde-4d53-ba7a-76c9e6723776" }),
	}),
	s("chat", {
		t({ "f947518f-ae46-49c5-80ff-f31f50cf8e46" }),
	}),
	s("simulator", {
		t({ "a11e0f55-d3ea-44f9-8e91-8cf0d7bcb275" }),
	}),
}
ls.add_snippets("sql", atria_snippets)
ls.add_snippets("http", atria_snippets)

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
