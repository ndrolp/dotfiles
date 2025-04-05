return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "saghen/blink.cmp" },
		opts = {
			servers = {
				lua_ls = {},
				ts_ls = {},
				volar = {
					init_options = {
						vue = {
							-- disable hybrid mode
							hybridMode = false,
						},
					},
				},
				cssls = {},
				emmet_ls = {},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
			vim.diagnostic.config({
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "󰅙",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.INFO] = "󰰁",
						[vim.diagnostic.severity.HINT] = "󰰁",
					},
					linehl = {
						[vim.diagnostic.severity.ERROR] = "ErrorMsg",
					},
					numhl = {
						[vim.diagnostic.severity.WARN] = "WarningMsg",
					},
				},
			})
		end,
	},
}
