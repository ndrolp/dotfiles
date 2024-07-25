local wk = require("which-key")

wk.add({
    {
        { "<leader>F", group = "Flutter" },
        { "<leader>f", group = "Find" },
        { "<leader>s", group = "Session" },
        { "<leader>l", group = "LSP" },
        { "<leader>v", group = "Split" },
        { "<leader>B", group = "DBUI" },
        { "<leader>g", group = "Git" },
        { "<leader>d", group = "Document" },
        { "<leader>b", group = "Buffer" },
        { "<leader>t", group = "ToDo" },
        { "g",         group = "Go" },
    },
})
