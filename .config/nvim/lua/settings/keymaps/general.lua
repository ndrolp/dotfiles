vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Hide search highlight", silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File", silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close", silent = true })
vim.keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "Close All", silent = true })
vim.keymap.set("i", "jj", "<C-[>", { desc = "Exit Insert Mode", silent = true })
vim.keymap.set("n", "<C-p>", function()
    require("telescope.builtin").commands()
end, { desc = "Commands Pallete", silent = true })
