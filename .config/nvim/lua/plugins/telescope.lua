return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    opts = {
        defaults = {
            prompt_prefix = "    ",
            file_ignore_patterns = { "node_modules", ".git", "build", "dist" },
        },
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
        },
    },
    -- or                              , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
}
