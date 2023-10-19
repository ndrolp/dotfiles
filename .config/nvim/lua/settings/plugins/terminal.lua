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
local under = Terminal:new({ hidden = true, direction = "horizontal" })

function LazyGitToggle()
  lazygit:toggle()
end

vim.keymap.set("n", "<leader>gg", "<cmd>lua LazyGitToggle()<CR>")
