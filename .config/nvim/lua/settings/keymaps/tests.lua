local opt = { noremap = true, silent = true }
local keymap = vim.keymap

opt.desc = "Run file"
keymap.set("n", "<leader>Tf", function()
    require("neotest").run.run(vim.fn.expand("%"))
end, opt)
opt.desc = "Run nearest test"
keymap.set("n", "<leader>Tr", function()
    require("neotest").run.run()
end, opt)
opt.desc = "Run all tests"
keymap.set("n", "<leader>TR", function()
    require("neotest").run.run(vim.fn.getcwd())
end, opt)
opt.desc = "Watch current file"
keymap.set("n", "<leader>Tw", function()
    require("neotest").watch.toggle(vim.fn.expand("%"))
end, opt)
opt.desc = "Watch current file"
keymap.set("n", "<leader>TW", function()
    require("neotest").watch.stop()
end, opt)
opt.desc = "Open output panel"
keymap.set("n", "<leader>Tp", function()
    require("neotest").output_panel.toggle()
end, opt)
opt.desc = "Open output"
keymap.set("n", "<leader>To", function()
    require("neotest").output.open()
end, opt)
opt.desc = "Open Summary"
keymap.set("n", "<leader>Ts", function()
    require("neotest").summary.toggle()
    require("neotest").run.run(vim.fn.getcwd())
end, opt)
