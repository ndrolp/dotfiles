local wk = require("which-key")

wk.add({
    {
        { "<leader>F", group = "Flutter", icon = { icon = "", color = "blue" } },
        { "<leader>f", group = "Find", icon = { icon = "", color = "orange" } },
        { "<leader>s", group = "Surround", icon = { icon = "󰅪", color = "orange" } },
        { "<leader>l", group = "LSP", icon = "" },
        { "<leader>v", group = "Split", icon = "󰤼" },
        { "<leader>B", group = "DBUI", icon = { icon = "", color = "pink" } },
        { "<leader>g", group = "Git", icon = { icon = "", color = "red" } },
        { "<leader>d", group = "Document", icon = "󰈙" },
        { "<leader>b", group = "Buffer", icon = "" },
        { "<leader>t", group = "ToDo", icon = "" },
        { "<leader>o", group = "Obsidian Notes", icon = { icon = "󱞁", color = "purple" } },
        { "<leader>T", group = "Testing", icon = { icon = "󰙨", color = "blue" } },
        { "<leader>N", group = "Neovim", icon = { icon = "", color = "green" } },
        { "g", group = "Go", icon = "󰪹" },
    },
})
