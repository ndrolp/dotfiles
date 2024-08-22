return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    opts = {
        defaults = {
            file_ignore_patterns = { "node_modules" },
        },
    },
    -- or                              , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
}
