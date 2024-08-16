local opt = { noremap = true, silent = true }
local keymap = vim.keymap

opt.desc = "Show LSP references "
keymap.set("n", "gr", ":Telescope lsp_references<CR>", opt)

opt.desc = "Go to declaration"
keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opt)

opt.desc = "Show LSP implementations"
keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", opt)

opt.desc = "Show LSP type definition"
keymap.set("n", "gt", ":Telescope lsp_type_definition<CR>", opt)

opt.desc = "Go to project"
keymap.set("n", "gp", ":Telescope neovim-project discover<CR>", opt)
