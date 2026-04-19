require("options")
require("mappings")

require("vim._core.ui2").enable({})

-- call style before plugins for some plugins that checks vim.g.color_scheme
require("style")

require("plugins")

vim.schedule(function()
  require("lsp")
end)
