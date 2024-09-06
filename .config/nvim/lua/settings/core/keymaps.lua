vim.keymap.del("n", "<leader>d")
vim.keymap.set("n", "s", "<NOP>")
vim.keymap.set("x", "s", "<NOP>")

-- Buffer
-- WORKFLOW
vim.keymap.set(
    "n",
    "<leader>ff",
    ":Telescope find_files hidden=true<CR>",
    { desc = "Open Telescope Find Files", silent = true }
)
vim.keymap.set(
    "n",
    "<leader>fg",
    ":Telescope live_grep theme=dropdown<CR>",
    { desc = "Open Telescope Find Files", silent = true }
)
-- Documentation
vim.keymap.set(
    "n",
    "<leader>dg",
    ":DogeGenerate<CR>",
    { desc = "Generate documentation for current line", silent = true }
)

vim.keymap.set("n", "<leader>Bo", ":tabnew | DBUIToggle<CR>", { desc = "Toggle DBUI", silent = true })

vim.keymap.set("n", "<leader>fr", ":%s/", { desc = "Find and replace", silent = true })
