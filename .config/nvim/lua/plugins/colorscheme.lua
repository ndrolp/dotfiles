return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    "tribela/vim-transparent",
    "rebelot/kanagawa.nvim",
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require 'nordic'.load()
        end
    }
}
