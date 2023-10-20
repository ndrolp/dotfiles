return {
  "easymotion/vim-easymotion",
  {

    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    -- or                              , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "nvim-focus/focus.nvim", version = "*" },
  { "stevearc/dressing.nvim" },
  "rcarriga/nvim-notify",
  {
    "numToStr/Comment.nvim",
    opts = {
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = {
        line = "<leader>lc",
        block = "gbc",
      },
      opleader = {
        line = "gc",
        block = "gb",
      },
      extra = {
        above = "gcO",
        below = "gco",
        eol = "gcA",
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    },
    lazy = false,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "simrat39/symbols-outline.nvim",
    opts = {},
  },
  "kazhala/close-buffers.nvim",
}
