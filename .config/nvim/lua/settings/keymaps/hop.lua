-- place this in one of your configuration file(s)
local hop = require("hop")
local directions = require("hop.hint").HintDirection

vim.keymap.set("", "f", function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })

vim.keymap.set("", "F", function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })

vim.keymap.set("", "<leader>fw", ":HopWord<CR>", { remap = true, silent = true, desc = "Find Word" })
vim.keymap.set("", "<leader>fW", ":HopCamelCase<CR>", { remap = true, silent = true, desc = "Find Word" })
