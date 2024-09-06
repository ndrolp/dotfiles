local mason_lspconfig = require("mason-lspconfig")
local opt = { noremap = true, silent = true }
local keymap = vim.keymap
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local on_attach = function(_, bufnr)
    opt.buffer = bufnr

    opt.desc = "Go to previus diagnostic"
    keymap.set("n", "[d", vim.diagnostic.goto_prev, opt)
    opt.desc = "Go to next diagnostic"
    keymap.set("n", "]d", vim.diagnostic.goto_prev, opt)

    opt.desc = "Show documentation for what is under the cursor"
    -- keymap.set("n", "K", vim.lsp.buf.hover, opt)

    if vim.lsp.inlay_hint then
        opt.desc = "Toggle Inline hint"
        vim.keymap.set("n", "<leader>li", function()
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
        end, opt)
    end
end

mason_lspconfig.setup_handlers({
    function(server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    ["rust_analyzer"] = function()
        lspconfig["rust_analyzer"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "rust" },
            root_dir = lspconfig.util.root_pattern("Cargo.toml"),
            cargo = {
                allFeatures = true,
            },
        })
    end,

    ["tsserver"] = function()
        local hints = {
            includeInlayEnumMemberValueHints = true,
            -- includeInlayFunctionLikeReturnTypeHints = true,
            -- includeInlayFunctionParameterTypeHints = true,
            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            -- includeInlayPropertyDeclarationTypeHints = true,
            includeInlayVariableTypeHints = false,
        }

        lspconfig["ts_ls"].setup({
            root_dir = lspconfig.util.root_pattern(
                ".prettierrc",
                "deno.js",
                "tsconfig.json",
                "jsconfig.json",
                "package.json"
            ),
            on_attach = function(client, bufnr)
                -- Disable tsserver's formatting capabilities
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false

                -- Optional: Set up additional LSP keybindings and configurations
                -- local bufopts = { noremap = true, silent = true, buffer = bufnr }
                -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
                -- vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
                -- Add other keybindings as needed
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
        })
    end,

    ["emmet_ls"] = function()
        lspconfig["emmet_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = {
                "html",
                "typescript",
                "javascript",
                "typescriptreact",
                "javascriptreact",
                "css",
                "sass",
                "scss",
                "less",
                "svelte",
            },
        })
    end,

    ["lua_ls"] = function()
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    hint = { enable = true },
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end,
})
