return {
	--mason
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- mason-lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls","jedi_language_server" },
			})
		end,
	},
	-- nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- precisa do cmp
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.jedi_language_server.setup({capabilities = capabilities})
			--setar novas  linguagens
			lspconfig.lua_ls.setup({capabilities = capabilities})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

		end,
	},

	--fim paretnes return
}