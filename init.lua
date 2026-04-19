if vim.loader then
  vim.loader.enable()
end

require("options")
-- call `style` before `plugins` for some plugins that checks vim.g.color_scheme
require("style")

vim.schedule(function()
  require("mappings")
  require("lsp")

  require("plugins")
  require("vim._core.ui2").enable({})
end)
