vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Hide search highlight" })
vim.keymap.set("n", "<leader>vs", ":vs<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>vv", ":split<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close" })

vim.keymap.set("n", "<leader>tn", ":tabnew %<CR>", { desc = "Open File in new tab" })
vim.keymap.set("n", "t", function()
  vim.cmd(":tabn " .. vim.v.count1)
end, { desc = "Go to tab with v:count1" })

-- TODO comments
vim.keymap.set("n", "<leader>tt", ":TodoTelescope keywords=TODO,FIX<CR>", { desc = "Open TODO, Fix" })
vim.keymap.set("n", "<leader>ta", ":TodoTelescope<CR>", { desc = "List all TODO in telescope" })

-- GIT

vim.keymap.set("n", "<leader>gl", ":Gitsigns blame_line<CR>", { desc = "Show line git blame" })
