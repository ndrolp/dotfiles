return {
    {

        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({
                            -- even more opts
                        }),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
            vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {})
            vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
}
