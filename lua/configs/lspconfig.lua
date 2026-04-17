local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- local lspconfig = require("lspconfig")
local lspconfig = vim.lsp.config

lspconfig("*", {
  capabilities = capabilities,
})

lspconfig("clangd", {
  cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
  init_options = { fallbackFlags = { "-std=c++17" } },
  on_init = on_init,
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false

    -- Keymap for triggering code actions (quick fixes)
    vim.keymap.set(
      "n",
      "<Leader>ca",
      vim.lsp.buf.code_action,
      { buffer = bufnr, desc = "LSP Code Action" }
    )
    vim.keymap.set(
      "n",
      "<Leader>dl",
      vim.diagnostic.open_float,
      { buffer = bufnr, desc = "Open diagnostic float" }
    )

    on_attach(client, bufnr)
  end,
})

lspconfig("pyright", {
  on_init = on_init,
  on_attach = on_attach,
  filetypes = { "python" },
  -- root_dir = lspconfig.util.root_pattern(".venv"),
  -- cmd = { "bash", "-c", "source .venv/bin/activate && .venv/bin/pyright-langserver --stdio" },
  cmd = { "bash", "-c", "pyright-langserver --stdio" },
})

lspconfig("lua_ls", {
  on_init = on_init,
  on_attach = on_attach,
})

--[[

-- list of all servers configured.
lspconfig.servers = {
  "lua_ls",
  "clangd",
  -- "gopls",
  -- "hls",
  -- "ols",
  "pyright",
}

-- list of servers configured with default config.
local default_servers = {
  -- "ols",
}

-- lsps with default config
for _, lsp in ipairs(default_servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  })
end

lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
  init_options = { fallbackFlags = { "-std=c++17" } },
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false

    -- Keymap for triggering code actions (quick fixes)
    vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "LSP Code Action" })
    vim.keymap.set("n", "<Leader>dl", vim.diagnostic.open_float, { buffer = bufnr, desc = "Open diagnostic float" })

    on_attach(client, bufnr)
  end,
  on_init = on_init,
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  -- root_dir = lspconfig.util.root_pattern(".venv"),
  -- cmd = { "bash", "-c", "source .venv/bin/activate && .venv/bin/pyright-langserver --stdio" },
  cmd = { "bash", "-c", "pyright-langserver --stdio" },
})

-- lspconfig.gopls.setup({
--     on_attach = function(client, bufnr)
--         client.server_capabilities.documentFormattingProvider = false
--         client.server_capabilities.documentRangeFormattingProvider = false
--         on_attach(client, bufnr)
--     end,
--     on_init = on_init,
--     capabilities = capabilities,
--     cmd = { "gopls" },
--     filetypes = { "go", "gomod", "gotmpl", "gowork" },
--     root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
--     settings = {
--         gopls = {
--             analyses = {
--                 unusedparams = true,
--             },
--             completeUnimported = true,
--             usePlaceholders = true,
--             staticcheck = true,
--         },
--     },
-- })

-- lspconfig.hls.setup({
--     on_attach = function(client, bufnr)
--         client.server_capabilities.documentFormattingProvider = false
--         client.server_capabilities.documentRangeFormattingProvider = false
--         on_attach(client, bufnr)
--     end,
--
--     on_init = on_init,
--     capabilities = capabilities,
-- })

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,

  settings = {
    Lua = {
      diagnostics = {
        enable = false, -- Disable all diagnostics from lua_ls
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.expand("$HOME/.xmake/repositories/xmake-repo/scripts/"),
          vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
          "${3rd}/love2d/library",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
})

-- lspconfig.clangd.setup({
--     cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
--     init_options = { fallbackFlags = { '-std=c++17' }, },
-- })


]]
