return {
  {
    "preservim/nerdtree",
    dependencies = {
      "ryanoasis/vim-devicons",
    },
    config = function()
      vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
      vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols["*.vue$"] = ""
      vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols["vue"] = ""
    end,
  },
}
