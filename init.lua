require("options")

require("plugins")

vim.schedule(function()
  require("lsp")
	require("mappings")
end)
