local hints = {
    includeInlayEnumMemberValueHints = true,
    includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
    includeInlayParameterNameHintsWhenArgumentMatchesName = true,
    includeInlayVariableTypeHints = false,
    -- includeInlayPropertyDeclarationTypeHints = true,
    -- includeInlayFunctionLikeReturnTypeHints = true,
    -- includeInlayFunctionParameterTypeHints = true,
}
return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "saghen/blink.cmp" },
        opts = {

            servers = {
                lua_ls = {},
                ts_ls = {

                    on_attach = function(client, bufnr)
                        -- Disable tsserver's formatting capabilities
                        client.server_capabilities.documentFormattingProvider = false
                        client.server_capabilities.documentRangeFormattingProvider = false
                    end,
                    inlayHints = hints,
                    settings = {
                        inlayHints = hints,
                        javascript = {
                            inlayHints = hints,
                        },
                        typescript = {
                            inlayHints = hints,
                        },
                        javascriptreact = {
                            inlayHints = hints,
                        },
                        typescriptreact = {
                            inlayHints = hints,
                        },
                    },
                },
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
