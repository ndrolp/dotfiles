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

local gh_dash = Terminal:new({
    cmd = "gh dash",
    hidden = true,
    float_opts = {
        height = 1000,
        width = 1000,
        border = "none",
    },
})

local neovim = Terminal:new({
    cmd = "nvim",
    hidden = true,
    float_opts = {
        height = 1000,
        width = 1000,
        border = "none",
    },
})

local under = Terminal:new({
    hidden = true,
    direction = "horizontal",
    name = "terminal",
    size = 30,
    count = 10,
    float_opts = { border = "single" },
})

function LazyGitToggle()
    lazygit:toggle()
end

function UnderToggle()
    under:toggle()
end

function NvimToggle()
    neovim:toggle()
end

function GhDashToggle()
    gh_dash:toggle()
end

vim.keymap.set({ "n", "t" }, "<C-k>", "<cmd>lua UnderToggle()<CR>", { desc = "Toggle Under Terminal", silent = true })
-- vim.keymap.set({ "n", "t" }, "<C-b>", "<cmd>lua NvimToggle()<CR>", { desc = "Toggle Nvim Instance", silent = true })
