vim.lsp.config("*", {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      },
    },
  },
  root_markers = { ".git" },
})

local lsp_servers = {
  "lua_ls",
  "clangd",
  "rust_analyzer",
  "pyright",
  "zls",
}

vim.lsp.enable(lsp_servers)
