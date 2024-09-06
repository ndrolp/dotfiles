vim.keymap.set("n", "<leader>Fr", ":FlutterRun<CR>", { desc = "Run flutter app", silent = true })
vim.keymap.set("n", "<leader>Fo", ":FlutterOutlineToggle<CR>", { desc = "Toggle Flutter Outline", silent = true })
vim.keymap.set("n", "<leader>Fd", ":FlutterDevices<CR>", { desc = "Toggle Flutter Outline", silent = true })
vim.keymap.set("n", "<leader>FR", ":FlutterRestart<CR>", { desc = "Restart Flutter app", silent = true })
vim.keymap.set("n", "<leader>FQ", ":FlutterQuit<CR>", { desc = "Close Flutter app", silent = true })
vim.keymap.set(
    "n",
    "<leader>FD",
    ":FlutterDetach<CR>",
    { desc = "Ends session local but keep on device", silent = true }
)
vim.keymap.set("n", "<leader>FL", ":FlutterLspRestart<CR>", { desc = "Flutter restart lsp", silent = true })
