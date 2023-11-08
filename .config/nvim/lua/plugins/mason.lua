return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")

      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      mason_lspconfig.setup({
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "emmet_ls",
          "pyright",
          "bashls",
          "jsonls",
          "volar",
          "rust_analyzer",
          "lua_ls",
        },

        automatic_installed = true,
      })

      mason_lspconfig.setup_handlers({
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function(server_name) -- default handler (optional)
          local opt = { noremap = true, silent = true }
          require("lspconfig")[server_name].setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            on_attach = function(client, bufnr)
              local keymap = vim.keymap
              opt.buffer = bufnr

              opt.desc = "Show LSP references "
              keymap.set("n", "gr", ":Telescope lsp_references<CR>", opt)

              opt.desc = "Go to declaration"
              keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opt)

              opt.desc = "Show LSP implementations"
              keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", opt)

              opt.desc = "Show LSP type definition"
              keymap.set("n", "gt", ":Telescope lsp_type_definition<CR>", opt)

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
            end,
          })
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        -- ["rust_analyzer"] = function()
        --   require("rust-tools").setup({})
        -- end,
      })

      mason_tool_installer.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "flake8", -- python linter
          "eslint_d", -- js linter
          "eslint",
        },
      })
    end,
  },
}
