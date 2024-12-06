local which = require("which-key")
vim.keymap.set("n", "<leader>gl", ":Gitsigns blame_line<CR>", { desc = "Show line git blame", silent = true })
vim.keymap.set("n", "<leader>gB", ":Gitsigns blame<CR>", { desc = "Show file blame", silent = true })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Change git branch", silent = true })
vim.keymap.set("n", "<leader>gg", "<cmd>lua LazyGitToggle()<CR>", { desc = "LazyGit", silent = true })
vim.keymap.set("n", "<leader>gd", "<cmd>lua GhDashToggle()<CR>", { desc = "Github Dashboard", silent = true })
vim.keymap.set("n", "<leader>gs", ":Neotree git_status float toggle<CR>", { desc = "Git Status", silent = true })
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "Current Hunk", silent = true })
-- ### REPO
which.add({
    { "<leader>gr", group = "Repo", icon = { icon = "", color = "red" } },
})
vim.keymap.set("n", "<leader>grb", ":Octo repo browser<CR>", { desc = "Open repo on browser", silent = true })
-- ### PR
which.add({
    { "<leader>gp", group = "Pull Request", icon = { icon = "󰓂", color = "red" } },
})
vim.keymap.set("n", "<leader>gpb", ":Octo pr browser<CR>", { desc = "Open Pull Request on browser", silent = true })
vim.keymap.set("n", "<leader>gpn", ":Octo pr create<CR>", { desc = "Create Pull Requet", silent = true })
vim.keymap.set("n", "<leader>gpc", ":Octo pr commits<CR>", { desc = "Show pull request commits", silent = true })
vim.keymap.set("n", "<leader>gpl", ":Octo pr list<CR>", { desc = "Show pull request list", silent = true })
-- ### ISSUES
which.add({
    { "<leader>gi", group = "Issues", icon = { icon = "", color = "blue" } },
})
vim.keymap.set("n", "<leader>gjb", ":Octo issue browser<CR>", { desc = "Open Issue on browser", silent = true })
vim.keymap.set("n", "<leader>gin", ":Octo issue create<CR>", { desc = "Create Issue Requet", silent = true })
vim.keymap.set("n", "<leader>gil", ":Octo issue list<CR>", { desc = "Show pull request list", silent = true })
vim.keymap.set("n", "<leader>gid", ":Octo issue develop<CR>", { desc = "Develop an Issue", silent = true })
