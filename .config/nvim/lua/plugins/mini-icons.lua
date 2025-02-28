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
        file = {
            ["docker-compose.dev.yml"] = { glyph = "󰡨", hl = "MiniIconsBlue" },
            ["docker-compose.*.yml"] = { glyph = "󰡨", hl = "MiniIconsBlue" },
            ["docker-compose.test.yml"] = { glyph = "󰡨", hl = "MiniIconsBlue" },
            [".dockerignore"] = { glyph = "󰡨", hl = "MiniIconsBlue" },
            [".env"] = { glyph = "", hl = "MiniIconsWhite" },
            [".env.dev"] = { glyph = "", hl = "MiniIconsWhite" },
            [".env.test"] = { glyph = "", hl = "MiniIconsWhite" },
            [".env.dev.sample"] = { glyph = "", hl = "MiniIconsWhite" },
        },
        filetype = {
            -- ["javascript"] = { glyph = "󰻲", hl = "MiniIconsRed" },
        },
        lsp = {},
        os = {},
    },
    lazy = true,
    specs = {
        -- { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },devicon
    },
    init = function()
        package.preload["nvim-web-devicons"] = function()
            require("mini.icons").mock_nvim_web_devicons()
            return package.loaded["nvim-web-devicons"]
        end
    end,
}
