local function get_custom_folder_icon(name)
    local icons = require("nvim-web-devicons")
    if name == "src" then
        return {
            icon = "󰻲", -- Custom glyph for src folder
            color = "#ff5f5f", -- Custom color for src folder
            cterm_color = "9", -- Terminal color for src folder
        }
    else
        -- Return the default folder icon
        return icons.get_icon("folder")
    end
end

return {
    {
        "nvim-tree/nvim-tree.lua",
        keys = { { "<leader>e", ":NvimTreeFindFileToggle<CR>", desc = "Toggle NvimTree" } },
        opts = {
            update_cwd = true,
            sort_by = "case_sensitive",
            view = {
                width = 40,
            },
            renderer = {
                group_empty = true,
                icons = {
                    glyphs = {
                        default = "",
                        symlink = "",
                        folder = {
                            arrow_open = "",
                            arrow_closed = "",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = "",
                        },
                    },
                },
            },
            filters = {
                git_ignored = false,
                dotfiles = false,
                git_clean = false,
                no_buffer = false,
            },
            on_attach = function(bufnr)
                local api = require("nvim-tree.api")
                --api.tree.toggle_hidden_filter()
                local function opts(desc)
                    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                end

                -- default mappings
                api.config.mappings.default_on_attach(bufnr)

                -- custom mappings
                vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
                vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
                vim.keymap.set("n", "v", api.node.open.vertical, opts("NvimTree Split Vertical"))
                vim.keymap.set("n", "s", api.node.open.horizontal, opts("NvimTree Split Horizontal"))
                vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
            end,
        },
        -- vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { desc = "Toggle NvimTree", silent = true })
    },
}
