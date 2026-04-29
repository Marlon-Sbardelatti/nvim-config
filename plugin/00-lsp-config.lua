vim.pack.add({
	"https://github.com/saghen/blink.lib",
})
vim.pack.add({ "https://github.com/saghen/blink.lib", "https://github.com/saghen/blink.cmp" })
local cmp = require("blink.cmp")
cmp.build():wait(60000)
cmp.setup({
	-- completion = { documentation = { auto_show = false } },
})

vim.pack.add({
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/williamboman/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
})

local mason = require("mason")
mason.setup()

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
	auto_install = true,
})

local capabilities = cmp.get_lsp_capabilities()

-- define once
vim.lsp.config("rust_analyzer", {
	capabilities = capabilities,
	diagnostic = {
		refreshSupport = false,
	},
})
vim.lsp.config("bashls", {
	capabilities = capabilities,
})

vim.lsp.config("html", {
	capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "love" },
			},
			workspace = {
				library = {
					vim.fn.expand("~/.local/share/lua-types/love2d/library"),
				},
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

vim.lsp.config("cssls", {
	capabilities = capabilities,
})

vim.lsp.config("biome", {
	capabilities = capabilities,
})

vim.lsp.config("cssmodules_ls", {
	capabilities = capabilities,
})

vim.lsp.config("eslint", {
	capabilities = capabilities,
})

vim.lsp.config("emmet_ls", {
	capabilities = capabilities,
})

vim.lsp.config("emmet_language_server", {
	capabilities = capabilities,
})

vim.lsp.config("gopls", {
	capabilities = capabilities,
})

vim.lsp.config("clangd", {
	capabilities = capabilities,
})
vim.lsp.config("csharp_ls", {
	capabilities = capabilities,
})

-- vim.lsp.config("pyright", {
--     capabilities = capabilities,
-- })

vim.lsp.config("ty", {
	capabilities = capabilities,
	-- settings = {
	--     ty = {
	--         completions = {
	--             autoImport = true,
	--         },
	--     },
	-- },
})
-- vim.lsp.config("pyrefly", {
--     capabilities = capabilities,
-- })

vim.lsp.config("ruff", {
	capabilities = capabilities,
})

vim.lsp.config("prettier", {
	capabilities = capabilities,
})

-- vim.lsp.config("dartls", {
--     capabilities = capabilities,
--     cmd = { "dart", "language-server", "--protocol=lsp" },
-- })

vim.lsp.config("sqlls", {
	capabilities = capabilities,
})

vim.lsp.config("sqls", {
	capabilities = capabilities,
})

vim.lsp.config("docker_compose_language_service", {
	capabilities = capabilities,
})

vim.lsp.config("dockerls", {
	capabilities = capabilities,
})

vim.lsp.config("angularls", {
	capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
	capabilities = capabilities,
})

vim.lsp.config("kube-linter", {
	capabilities = capabilities,
})

vim.lsp.config("yaml-language-server", {
	capabilities = capabilities,
})

vim.lsp.enable({
	"rust_analyzer",
	"html",
	"lua_ls",
	"cssls",
	"biome",
	"cssmodules_ls",
	"eslint",
	"emmet_ls",
	"emmet_language_server",
	"gopls",
	"clangd",
	"csharp_ls",
	-- "pyright",
	"ty",
	-- "pyrefly",
	"ruff",
	"prettier",
	"sqlls",
	"sqls",
	"docker_compose_language_service",
	"dockerls",
	"angularls",
	"ts_ls",
	"kube-linter",
	"yaml-language-server",
	"bashls",
})

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>cd", function()
	require("fzf-lua").lsp_code_actions()
end, {})
vim.keymap.set("n", "<leader>ts", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})
-- return {
--     {
--         "williamboman/mason.nvim",
--         lazy = false,
--         config = function()
--             require("mason").setup()
--         end,
--     },
--     {
--         "williamboman/mason-lspconfig.nvim",
--         lazy = false,
--         opts = {
--             auto_install = true,
--         },
--     },
--     {
--         "neovim/nvim-lspconfig",
--         dependencies = { 'saghen/blink.cmp' },
--         lazy = false,
--         config = function()
--             local capabilities = require('blink.cmp').get_lsp_capabilities()

--             -- define once
--             vim.lsp.config("rust_analyzer", {
--                 capabilities = capabilities,
--                 diagnostic = {
--                     refreshSupport = false,
--                 },
--             })
--             vim.lsp.config("bashls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("html", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("lua_ls", {
--                 capabilities = capabilities,
--                 settings = {
--                     Lua = {
--                         runtime = {
--                             version = "LuaJIT",
--                         },
--                         diagnostics = {
--                             globals = { "love" },
--                         },
--                         workspace = {
--                             library = {
--                                 vim.fn.expand("~/.local/share/lua-types/love2d/library"),
--                             },
--                             checkThirdParty = false,
--                         },
--                         telemetry = {
--                             enable = false,
--                         },
--                     },
--                 },
--             })

--             vim.lsp.config("cssls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("biome", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("cssmodules_ls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("eslint", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("emmet_ls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("emmet_language_server", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("gopls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("clangd", {
--                 capabilities = capabilities,
--             })
--             vim.lsp.config("csharp_ls", {
--                 capabilities = capabilities,
--             })

--             -- vim.lsp.config("pyright", {
--             --     capabilities = capabilities,
--             -- })

--             vim.lsp.config('ty', {
--                 capabilities = capabilities,
--                 -- settings = {
--                 --     ty = {
--                 --         completions = {
--                 --             autoImport = true,
--                 --         },
--                 --     },
--                 -- },
--             })
--             -- vim.lsp.config("pyrefly", {
--             --     capabilities = capabilities,
--             -- })

--             vim.lsp.config("ruff", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("prettier", {
--                 capabilities = capabilities,
--             })

--             -- vim.lsp.config("dartls", {
--             --     capabilities = capabilities,
--             --     cmd = { "dart", "language-server", "--protocol=lsp" },
--             -- })

--             vim.lsp.config("sqlls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("sqls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("docker_compose_language_service", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("dockerls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("angularls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("ts_ls", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("kube-linter", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.config("yaml-language-server", {
--                 capabilities = capabilities,
--             })

--             vim.lsp.enable({
--                 "rust_analyzer",
--                 "html",
--                 "lua_ls",
--                 "cssls",
--                 "biome",
--                 "cssmodules_ls",
--                 "eslint",
--                 "emmet_ls",
--                 "emmet_language_server",
--                 "gopls",
--                 "clangd",
--                 "csharp_ls",
--                 -- "pyright",
--                 "ty",
--                 -- "pyrefly",
--                 "ruff",
--                 "prettier",
--                 "sqlls",
--                 "sqls",
--                 "docker_compose_language_service",
--                 "dockerls",
--                 "angularls",
--                 "ts_ls",
--                 "kube-linter",
--                 "yaml-language-server",
--                 "bashls"
--             })

--             vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
--             vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--             vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
--             vim.keymap.set("n", "<leader>cd", function()
--                 require("fzf-lua").lsp_code_actions()
--             end, {})
--             vim.keymap.set("n", "<leader>ts", vim.diagnostic.open_float, {})
--             vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})
--         end,
--     },
-- }
