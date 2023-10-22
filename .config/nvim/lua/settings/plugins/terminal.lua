local term = require("toggleterm")

term.setup({
  size = function(terminal)
    if terminal.direction == "horizontal" then
      return 20
    elseif terminal.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  float_opts = {
    height = 50,
    width = math.ceil(vim.o.columns * 0.8),
  },
  open_mapping = "<C-j>",
  direction = "float",
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

local under = Terminal:new({ hidden = true, direction = "horizontal", name = "terminal", size = 30 })

function LazyGitToggle()
  lazygit:toggle()
end

function UnderToggle()
  under:toggle()
end

vim.keymap.set("n", "<leader>gg", "<cmd>lua LazyGitToggle()<CR>")
vim.keymap.set({ "n", "t" }, "<C-k>", "<cmd>lua UnderToggle()<CR>")
