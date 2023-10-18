return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
      local lspconfig = require("lspconfig")

      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local opt = { noremap = true, silent = true }
      local keymap = vim.keymap

      local on_attach = function(client, bufnr)
        opt.buffer = bufnr

        opt.desc = "Show LSP references "
        keymap.set("n", "gr", ":Telescope lsp_references<CR>", opt)

        opt.desc = "Go to declaration"
        keymap.set("n", "gd", vim.lsp.buf.declaration, opt)

        opt.desc = "Show LSP implementations"
        keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", opt)

        opt.desc = "Show LSP type definition"
        keymap.set("n", "gt", ":Telescope lsp_type_definition<CR>", opt)

        opt.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opt)

        opt.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opt)

        opt.desc = "Show buffer diagnostic"
        keymap.set("n", "<leader>D", ":Telescope diagnostics buffnr=0<CR>", opt)

        opt.desc = "Show line diagnostics"
        keymap.set("n", "gl", vim.diagnostic.open_float, opt)

        opt.desc = "Go to previus diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opt)

        opt.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_prev, opt)

        opt.desc = "Show documentation for what is under the cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opt)

        opt.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opt)
      end

      local capabilities = cmp_nvim_lsp.default_capabilities()

      local signals = { Error = "󰅙 ", Info = " ", Hint = "󰰁 ", Warn = " " }
      for type, icon in pairs(signals) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      lspconfig["pyright"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig["tsserver"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig["emmet_ls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = {
          "html",
          "typescript",
          "javascript",
          "typescriptreact",
          "javascriptreact",
          "css",
          "sass",
          "scss",
          "less",
          "svelte",
        },
      })

      lspconfig["lua_ls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
        },
      })
    end,
  },
}
