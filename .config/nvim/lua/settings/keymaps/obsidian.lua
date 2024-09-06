local opt = { noremap = true, silent = true }
local keymap = vim.keymap

opt.desc = "Toggle Checkbox"
keymap.set("n", "<leader>oc", function()
    return require("obsidian").util.toggle_checkbox()
end, opt)

opt.desc = "New Note"
keymap.set("n", "<leader>on", ":ObsidianNew ", { noremap = true, silent = false })

opt.desc = "Show Obsidian Backlinks"
keymap.set("n", "<leader>ob", ":ObsidianBacklink<CR> ", opt)

opt.desc = "Search Obsidian"
keymap.set("n", "<leader>os", ":ObsidianSearch<CR> ", opt)

opt.desc = "Show Obsidian Links"
keymap.set("n", "<leader>ol", ":ObsidianLinks<CR> ", opt)

opt.desc = "Quick Switch"
keymap.set("n", "<leader>oq", ":ObsidianQuickSwitch<CR> ", opt)

opt.desc = "Open Obsidian App"
keymap.set("n", "<leader>oo", ":ObsidianOpen<CR> ", opt)

opt.desc = "Obsidian Tags"
keymap.set("n", "<leader>ot", ":ObsidianTags<CR> ", opt)
