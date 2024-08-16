vim.wo.number = true
vim.wo.relativenumber = true
vim.lsp.inlay_hint.enable(true)

vim.o.timeoutlen = 200
vim.o.pumheight = 15
vim.o.scrolloff = 5
vim.o.ignorecase = true
vim.opt.encoding = "utf-8"

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.o.termguicolors = true
vim.o.spell = false
vim.o.spelllang = "en_us"
vim.o.cmdheight = 0
vim.o.shell = "zsh"

vim.cmd([[
    augroup filetype_jsx
        autocmd!
        autocmd FileType javascript set filetype=javascriptreact
    augroup end
]])

vim.cmd([[
    augroup filetype_tsx
        autocmd!
        autocmd FileType typescript set filetype=typescriptreact
    augroup end
]])
