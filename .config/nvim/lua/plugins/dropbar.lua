return {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    enabled = false,
    config = function()
        require("dropbar").setup({
            bars = {
                enabled = true,
            },
        })
    end,
}
