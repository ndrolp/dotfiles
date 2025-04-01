return {
    {
        "coffebar/neovim-project",
        opts = {
            projects = { -- define project roots
                -- "~/.config/*",
                "~/.dotfiles/.config/*",
                "~/.dotfiles/",
                "~/Development/Projects/*",
                "~/Documentos/Projects/*",
            },
            last_session_on_startup = false,
        },
        init = function()
            -- enable saving the state of plugins in the session
            vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
        end,
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
            { "Shatur/neovim-session-manager" },
        },
        config = function()
            vim.keymap.set("n", "gp", ":Telescope neovim-project discover<CR>", {})
        end,
        lazy = false,
        priority = 100,
    },
}
