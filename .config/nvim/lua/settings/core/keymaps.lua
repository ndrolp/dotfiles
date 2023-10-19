local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Hide search highlight" })
vim.keymap.set("n", "<leader>vs", ":vs<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>vv", ":split<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close" })

vim.keymap.set("n", "<leader>tn", ":tabnew %<CR>", { desc = "Open File in new tab" })
vim.keymap.set("n", "t", function()
  vim.cmd(":tabn " .. vim.v.count1)
end, { desc = "Go to tab with v:count1" })
-- To Do comments
vim.keymap.set("n", "<leader>tt", ":TodoTelescope keywords=TODO,FIX<CR>", { desc = "Open TODO, Fix" })
vim.keymap.set("n", "<leader>ta", ":TodoTelescope<CR>", { desc = "List all TODO in telescope" })
-- GIT
vim.keymap.set("n", "<leader>gl", ":Gitsigns blame_line<CR>", { desc = "Show line git blame" })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Change git branch" })
-- Session
vim.keymap.set("n", "<leader>ss", ":SessionSave<CR>", { desc = "Save the session for the folder" })
vim.keymap.set("n", "<leader>sl", ":SessionLoad<CR>", { desc = "Load the folder session" })
-- Buffer
vim.keymap.set("n", "<leader>bq", ":bd<CR>", { desc = "Close the current buffer" })
vim.keymap.set("n", "<leader>bn", ":bNext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bb", ":bprevious<CR>", { desc = "Go to previus buffer" })
vim.keymap.set("n", "<leader>bf", builtin.buffers, { desc = "Telescope opened buffers" })
-- Workflow
vim.keymap.set("n", "<leader>ll", ":Telescope filetypes<CR>", { desc = "Select Filetype" })
