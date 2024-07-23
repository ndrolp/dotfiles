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
            local signals = { Error = "󰅙 ", Info = " ", Hint = "󰰁 ", Warn = " " }
            for type, icon in pairs(signals) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
            end

            require("luasnip").filetype_extend("javascript", { "javascriptreact" })
            require("luasnip").filetype_extend("javascript", { "html" })
        end,
    },
}
