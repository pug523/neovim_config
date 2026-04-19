local o = vim.o
local opt = vim.opt

-- Indenting
o.number = true
o.relativenumber = false
o.ignorecase = true

o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.cursorlineopt = "both" -- to enable cursorline!

o.splitbelow = true
o.splitright = true

o.pumborder = "rounded"

opt.clipboard = "unnamedplus"
opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
  "fuzzy",
  "popup",
}
opt.termguicolors = true
opt.laststatus = 3

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
