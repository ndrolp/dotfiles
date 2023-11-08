local mason_lspconfig = require("mason-lspconfig")
local opt = { noremap = true, silent = true }
local keymap = vim.keymap
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local on_attach = function(_, bufnr)
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
end

mason_lspconfig.setup_handlers({
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  ["rust_analyzer"] = function()
    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "rust" },
      root_dir = lspconfig.util.root_pattern("Cargo.toml"),
      cargo = {
        allFeatures = true,
      },
    })
  end,

  ["emmet_ls"] = function()
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
  end,

  ["lua_ls"] = function()
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
})
