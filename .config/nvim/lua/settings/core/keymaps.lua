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
-- FLUTTER
vim.keymap.set("n", "<leader>Fr", ":FlutterRun<CR>", { desc = "Run flutter app", silent = true })
vim.keymap.set("n", "<leader>Fo", ":FlutterOutlineToggle<CR>", { desc = "Toggle Flutter Outline", silent = true })
vim.keymap.set("n", "<leader>Fd", ":FlutterDevices<CR>", { desc = "Toggle Flutter Outline", silent = true })
vim.keymap.set("n", "<leader>FR", ":FlutterRestart<CR>", { desc = "Restart Flutter app", silent = true })
vim.keymap.set("n", "<leader>FQ", ":FlutterQuit<CR>", { desc = "Close Flutter app", silent = true })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Open Telescope Find Files", silent = true })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Open Telescope Find Files", silent = true })
vim.keymap.set(
    "n",
    "<leader>FD",
    ":FlutterDetach<CR>",
    { desc = "Ends session local but keep on device", silent = true }
)
vim.keymap.set("n", "<leader>FL", ":FlutterLspRestart<CR>", { desc = "Flutter restart lsp", silent = true })
-- Documentation
vim.keymap.set(
    "n",
    "<leader>dg",
    ":DogeGenerate<CR>",
    { desc = "Generate documentation for current line", silent = true }
)

vim.keymap.set("n", "<leader>Bo", ":tabnew | DBUIToggle<CR>", { desc = "Toggle DBUI", silent = true })

vim.keymap.set("n", "<leader>fr", ":%s/", { desc = "Find and replace", silent = true })
