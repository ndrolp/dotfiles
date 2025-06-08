vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local state = {
    floating = {
        buf = -1,
        win = -1,
    },
    bottom = {
        buf = -1,
        win = -1,
    },
    lazygit = {
        buf = -1,
        win = -1,
    },
}

local function create_bottom_window(opts)
    opts = opts or {}
    local width = opts.width or math.floor(vim.o.columns * 1)
    local height = opts.height or math.floor(vim.o.lines * 0.3)

    local col = math.floor((vim.o.columns - width) / 2)
    local row = math.floor((vim.o.lines - (height + 3)))

    local buf = nil
    if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true)
    end

    local win_config = {
        relative = "editor",
        width = width,
        height = height,
        col = col,
        row = row,
        style = "minimal",
        border = "single",
        title = "TERMINAL",
        title_pos = "right",
    }

    local win = vim.api.nvim_open_win(buf, true, win_config)

    return { buf = buf, win = win }
end

local function create_floating_window(opts)
    opts = opts or {}
    local width = opts.width or math.floor(vim.o.columns * 0.8)
    local height = opts.height or math.floor(vim.o.lines * 0.8)

    local col = math.floor((vim.o.columns - width) / 2)
    local row = math.floor((vim.o.lines - height) / 2)

    local buf = nil
    if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true)
    end

    local win_config = {
        relative = "editor",
        width = width,
        height = height,
        col = col,
        row = row,
        style = "minimal",
        border = "single",
        title = opts.title or "TERMINAL",
        title_pos = opts.title_pos or "center",
    }

    local win = vim.api.nvim_open_win(buf, true, win_config)

    return { buf = buf, win = win }
end

local toggle_terminal = function()
    if not vim.api.nvim_win_is_valid(state.floating.win) then
        state.floating = create_floating_window({ buf = state.floating.buf })
        if vim.bo[state.floating.buf].buftype ~= "terminal" then
            vim.cmd.terminal()
            vim.bo[state.floating.buf].buflisted = false
            vim.bo[state.floating.buf].swapfile = false
        end
        vim.cmd("startinsert")
    else
        vim.api.nvim_win_hide(state.floating.win)
    end
end

local toggle_bottom_terminal = function()
    if not vim.api.nvim_win_is_valid(state.bottom.win) then
        state.bottom = create_bottom_window({ buf = state.bottom.buf })
        if vim.bo[state.bottom.buf].buftype ~= "terminal" then
            vim.cmd.terminal()
            vim.bo[state.bottom.buf].buflisted = false
            vim.bo[state.bottom.buf].swapfile = false
        end
        vim.cmd("startinsert")
    else
        vim.api.nvim_win_hide(state.bottom.win)
    end
end

-- New: toggle lazygit floating terminal
local toggle_lazygit = function()
    if not vim.api.nvim_win_is_valid(state.lazygit.win) then
        -- Create floating window with custom title and size
        state.lazygit = create_floating_window({
            buf = state.lazygit.buf,
            width = math.floor(vim.o.columns * 0.9),
            height = math.floor(vim.o.lines * 0.9),
            title = "LAZYGIT",
            title_pos = "center",
        })

        -- Start lazygit in the terminal buffer
        vim.fn.termopen("lazygit", {
            on_exit = function()
                if vim.api.nvim_win_is_valid(state.lazygit.win) then
                    vim.api.nvim_win_close(state.lazygit.win, true)
                    state.lazygit.win = -1
                    state.lazygit.buf = -1
                end
            end,
        })

        vim.cmd("startinsert")
    else
        vim.api.nvim_win_hide(state.lazygit.win)
    end
end

-- Commands
vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
vim.api.nvim_create_user_command("Underterminal", toggle_bottom_terminal, {})
vim.api.nvim_create_user_command("LazyGit", toggle_lazygit, {})

-- Keymaps
vim.keymap.set({ "n", "t" }, "<C-j>", toggle_terminal, {})
vim.keymap.set({ "n", "t" }, "<C-k>", toggle_bottom_terminal, {})
vim.keymap.set({ "n", "t" }, "<leader>gg", toggle_lazygit, { desc = "Toggle lazygit floating terminal" })
