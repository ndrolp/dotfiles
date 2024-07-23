return {
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },

    {
        "kkoomen/vim-doge",
        build = function()
            vim.cmd(":call doge#install()")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            inlay_hints = { enabled = true },
        },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            { "antosha417/nvim-lsp-file-operations", config = true },
        },
        config = function()
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

            require("luasnip").filetype_extend("javascript", { "javascriptreact" })
            require("luasnip").filetype_extend("javascript", { "html" })
        end,
    },
}
