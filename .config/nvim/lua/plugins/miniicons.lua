return {
    "echasnovski/mini.icons",
    opts = {
        style = "glyph",

        -- Customize per category. See `:h MiniIcons.config` for details.
        default = {},
        directory = {
            -- ["src"] = { glyph = "󰻲", hl = "MiniIconsRed" },
        },
        extension = {
            -- ["lua"] = { glyph = "󰻲", hl = "MiniIconsRed" },
        },
        file = {},
        filetype = {
            -- ["javascript"] = { glyph = "󰻲", hl = "MiniIconsRed" },
        },
        lsp = {},
        os = {},
    },
    lazy = true,
    specs = {
        -- { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
    },
    init = function()
        package.preload["nvim-web-devicons"] = function()
            require("mini.icons").mock_nvim_web_devicons()
            return package.loaded["nvim-web-devicons"]
        end
    end,
}
