return {
    {
        "echasnovski/mini.comment",
        version = false,
        config = function()
            require("mini.comment").setup()
        end,
    },
    {
        "echasnovski/mini.icons",
        version = false,
        config = function()
            require("mini.icons").setup()
        end,
    },
    {
        "echasnovski/mini.files",
        version = false,
        config = function()
            require("mini.files").setup()

            -- Map <leader>ff to open Telescope's file finder
            vim.api.nvim_set_keymap("n", "<C-e>", ":lua MiniFiles.open()<CR>", { noremap = true, silent = true })
        end,
    },
}
