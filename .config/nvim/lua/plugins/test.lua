return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "haydenmeade/neotest-jest",
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-jest")({
                        jestCommand = "npm run test --",
                        jestConfigFile = "custom.jest.config.ts",
                        env = { CI = true },
                        cwd = function(path)
                            return vim.fn.getcwd()
                        end,
                    }),
                },
                filter_dirs = function(name, rel_path, root)
                    if name == "dist" then
                        return false
                    end
                    return true
                end,
            })
        end,
    },
}
