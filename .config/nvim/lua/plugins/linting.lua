return {
  {
    "mfussenegger/nvim-lint",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        javascript = { "eslint" },
        typescript = { "eslint" },
        vue = { "eslint" },
        javascriptreact = { "eslint" },
        typescriptreact = { "eslint" },
        python = { "flake8" },
      }
      local lint_agroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_agroup,
        callback = function()
          lint.try_lint()
        end,
      })

      vim.keymap.set("n", "<leader>lff", function()
        lint.try_lint()
      end, { desc = "Trigger Linting" })
    end,
  },
}
