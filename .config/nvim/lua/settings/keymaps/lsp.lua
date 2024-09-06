local opt = { noremap = true, silent = true }
local keymap = vim.keymap

opt.desc = "Smart rename"
keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opt)

opt.desc = "Show buffer diagnostic"
keymap.set("n", "<leader>lD", ":Telescope diagnostics buffnr=0<CR>", opt)

opt.desc = "Show line diagnostics"
keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opt)

opt.desc = "Restart LSP"
keymap.set("n", "<leader>lR", ":LspRestart<CR>", opt)

opt.desc = "Select Filetype"
keymap.set("n", "<leader>ll", ":Telescope filetypes<CR>", opt)

opt.desc = "Open Code actions"
keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opt)

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
opt.desc = "Coppy Filename"
vim.keymap.set("n", "<leader>lF", showFileName, opt)
