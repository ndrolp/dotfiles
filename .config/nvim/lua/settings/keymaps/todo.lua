vim.keymap.set("n", "<leader>tt", ":TodoTelescope keywords=TODO,FIX<CR>", { desc = "Open TODO, Fix", silent = true })
vim.keymap.set("n", "<leader>ta", ":TodoTelescope<CR>", { desc = "List all TODO in telescope", silent = true })
