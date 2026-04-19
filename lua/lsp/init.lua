local function on_attach(client, bufnr)
  -- if client:supports_method("textDocument/completion") then
  vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
  -- end

  local opts = { buffer = bufnr, silent = true }
  local map = vim.keymap.set
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "gi", vim.lsp.buf.implementation, opts)
  map("n", "gD", vim.lsp.buf.declaration, opts)
  map("n", "gr", vim.lsp.buf.references, opts)
end

vim.lsp.config("*", {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      },
    },
  },
  on_attach = on_attach,
  root_markers = { ".git" },
})

local lsp_servers = {
  "lua_ls",
  "clangd",
  "rust_analyzer",
  "pyright",
  "zls",
}
require("lsp.clangd")
require("lsp.lua_ls")

vim.lsp.enable(lsp_servers)
