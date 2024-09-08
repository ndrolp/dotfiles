return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    opts = {
        defaults = {
            prompt_prefix = "    ",
            layout_config = {
                vertical = { width = 0.5 },
            },
            file_ignore_patterns = { "node_modules", ".git", "build", "dist" },
            mappings = {
                i = {
                    ["<C-j>"] = require("telescope.actions").move_selection_next,
                    ["<C-k>"] = require("telescope.actions").move_selection_previous,
                    ["<C-h>"] = require("telescope.actions").which_key, -- Optionally map C-h for help menu
                },
            },
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
