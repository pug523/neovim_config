if vim.loader then
  vim.loader.enable()
end

local setup_async = true

require("options")

-- call `style` before `plugins` for some plugins that checks vim.g.color_scheme
require("style")
require("mappings")

-- require("plugins")

-- preload plugins such as `alpha-nvim``
require("preload")

local function setup_all()
  require("lsp")
  require("diagnostic")
  require("plugins")
end

if setup_async then
  vim.schedule(setup_all)
else
  setup_all()
end
