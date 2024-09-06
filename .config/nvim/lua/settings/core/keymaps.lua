vim.keymap.del("n", "<leader>d")
vim.keymap.set("n", "s", "<NOP>")
vim.keymap.set("x", "s", "<NOP>")
-- vim.keymap.del("n", "s")

-- To Do comments
-- GIT
-- Session
vim.keymap.set("n", "<leader>Ss", ":SessionSave<CR>", { desc = "Save the session for the folder", silent = true })
vim.keymap.set("n", "<leader>Sl", ":SesionLoad<CR>", { desc = "Load the folder session", silent = true })
-- Buffer
-- WORKFLOW
vim.keymap.set(
    "n",
    "<leader>ff",
    ":Telescope find_files hidden=true<CR>",
    { desc = "Open Telescope Find Files", silent = true }
)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Open Telescope Find Files", silent = true })
-- Documentation
vim.keymap.set(
    "n",
    "<leader>dg",
    ":DogeGenerate<CR>",
    { desc = "Generate documentation for current line", silent = true }
)

vim.keymap.set("n", "<leader>Bo", ":tabnew | DBUIToggle<CR>", { desc = "Toggle DBUI", silent = true })

vim.keymap.set("n", "<leader>fr", ":%s/", { desc = "Find and replace", silent = true })
