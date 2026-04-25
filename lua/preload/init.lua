local function load(name)
  require("preload." .. name)
end

load("alpha_nvim")
-- load("bufferline")
-- load("dashboard_nvim")
load("nvim_tree")
