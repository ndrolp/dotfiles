require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
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
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree", silent = true })
