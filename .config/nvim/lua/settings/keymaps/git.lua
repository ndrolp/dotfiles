vim.keymap.set("n", "<leader>gl", ":Gitsigns blame_line<CR>", { desc = "Show line git blame", silent = true })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Change git branch", silent = true })
vim.keymap.set("n", "<leader>gg", "<cmd>lua LazyGitToggle()<CR>", { desc = "LazyGit", silent = true })
