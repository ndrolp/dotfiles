local builtin = require("telescope.builtin")
vim.keymap.del("n", "<leader>d")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Hide search highlight", silent = true })
vim.keymap.set("n", "<leader>vs", ":vs<CR>", { desc = "Vertical Split", silent = true })
vim.keymap.set("n", "<leader>vv", ":split<CR>", { desc = "Horizontal Split", silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File", silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close", silent = true })
vim.keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "Close All", silent = true })
vim.keymap.set("n", "<leader>tn", ":tabnew %<CR>", { desc = "Open File in new tab", silent = true })
vim.keymap.set("n", "t", function()
  vim.cmd(":tabn " .. vim.v.count1)
end, { desc = "Go to tab with v:count1", silent = true })
-- To Do comments
vim.keymap.set("n", "<leader>tt", ":TodoTelescope keywords=TODO,FIX<CR>", { desc = "Open TODO, Fix", silent = true })
vim.keymap.set("n", "<leader>ta", ":TodoTelescope<CR>", { desc = "List all TODO in telescope", silent = true })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "List all TODO in telescope", silent = true })
-- GIT
vim.keymap.set("n", "<leader>gl", ":Gitsigns blame_line<CR>", { desc = "Show line git blame", silent = true })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Change git branch", silent = true })
-- Session
vim.keymap.set("n", "<leader>ss", ":SessionSave<CR>", { desc = "Save the session for the folder", silent = true })
vim.keymap.set("n", "<leader>sl", ":SessionLoad<CR>", { desc = "Load the folder session", silent = true })
-- Buffer
vim.keymap.set("n", "<leader>bq", ":bd<CR>", { desc = "Close the current buffer", silent = true })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Go to next buffer", silent = true })
vim.keymap.set("n", "<leader>bb", ":bprevious<CR>", { desc = "Go to previus buffer", silent = true })
vim.keymap.set("n", "<C-l>", ":bnext<CR>", { desc = "Go to next buffer", silent = true })
vim.keymap.set("n", "<C-h>", ":bprevious<CR>", { desc = "Go to previus buffer", silent = true })
vim.keymap.set("n", "<leader>bf", builtin.buffers, { desc = "Telescope opened buffers", silent = true })
vim.keymap.set("n", "<leader>ba", ":BDelete all<CR>", { desc = "Close all buffers", silent = true })
vim.keymap.set("n", "<leader>bh", ":BDelete hidden<CR>", { desc = "Close non visible buffers", silent = true })
vim.keymap.set("n", "<leader>bo", ":BDelete other<CR>", { desc = "Close all buffers except current", silent = true })
-- WORKFLOW
vim.keymap.set("n", "<leader>ll", ":Telescope filetypes<CR>", { desc = "Select Filetype", silent = true })
vim.keymap.set("n", "<leader>lo", ":SymbolsOutline<CR>", { desc = "Open symbols outline", silent = true })
local function showFileName()
  local function bufferName()
    vim.cmd("echo expand('%:p')")
    vim.cmd("let @+ = expand('%:p')")
    vim.cmd('echo "Full path of " . expand(\'%:t\') . " was copied to system clipboard"')
  end
  bufferName()
  local file = vim.fn.expand("%:t")
  local path = vim.fn.expand("%")
  vim.notify(path, "info", { title = "Coppied path of " .. file .. " to clipboard", render = "compact", silent = true })
end
vim.keymap.set("n", "<leader>lF", showFileName, { desc = "Open symbols outline", silent = true })
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Open code actions", silent = true })
-- FLUTTER
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
-- Documentation
vim.keymap.set(
  "n",
  "<leader>dg",
  ":DogeGenerate<CR>",
  { desc = "Generate documentation for current line", silent = true }
)

vim.keymap.set("n", "<leader>Bo", ":tabnew | DBUIToggle<CR>", { desc = "Toggle DBUI", silent = true })

vim.keymap.set("n", "<leader>fr", ":%s/", { desc = "Find and replace", silent = true })
