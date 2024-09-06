local telescope_builtins = require("telescope.builtin")
vim.keymap.set("n", "<leader>Nt", function()
    telescope_builtins.colorscheme()
end, { desc = "Colorscheme", silent = true })

vim.keymap.set("n", "<leader>Nk", function()
    telescope_builtins.keymaps()
end, { desc = "Keymaps", silent = true })

vim.keymap.set("n", "<leader>Nc", function()
    telescope_builtins.command_history()
end, { desc = "Command History", silent = true })

vim.keymap.set("n", "<leader>Nm", function()
    telescope_builtins.man_pages()
end, { desc = "Man Pakges", silent = true })

vim.keymap.set("n", "<leader>Ns", function()
    telescope_builtins.search_history()
end, { desc = "Search History", silent = true })

vim.keymap.set("n", "<leader>Nh", function()
    telescope_builtins.help_tags()
end, { desc = "Help Tags", silent = true })
