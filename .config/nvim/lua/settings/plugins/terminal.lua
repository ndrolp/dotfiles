local term = require("toggleterm")

term.setup({
  open_mapping = "<C-j>",
  direction = "float",
  command = "zsh",
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  float_opts = {
    height = 1000,
    width = 1000,
    border = "none",
  },
})

local under = Terminal:new({ hidden = true, direction = "horizontal", name = "terminal", size = 35 })

function LazyGitToggle()
  lazygit:toggle()
end

function UnderToggle()
  under:toggle()
end

vim.keymap.set("n", "<leader>gg", "<cmd>lua LazyGitToggle()<CR>")
vim.keymap.set({ "n", "t" }, "<C-k>", "<cmd>lua UnderToggle()<CR>")
