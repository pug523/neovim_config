local lsp = vim.lsp

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function on_attach(client, bufnr)
  if client:supports_method("textDocument/completion") then
    lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
  end

  local opts = { buffer = bufnr, silent = true }
  local map = vim.keymap.set
  map("n", "gd", lsp.buf.definition, opts)
  map("n", "K", lsp.buf.hover, opts)
  map("n", "gi", lsp.buf.implementation, opts)
  map("n", "gD", lsp.buf.declaration, opts)
  map("n", "gr", lsp.buf.references, opts)
end

lsp.config("*", {
  capabilities = capabilities,
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

lsp.enable(lsp_servers)
