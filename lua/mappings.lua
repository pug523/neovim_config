local map = vim.keymap.set
local silent = { silent = true }

vim.g.mapleader = " "
vim.g.maplocal = "\\"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<esc>")

-- bufdel
-- map("n", "<leader>qq", ":BufDel<CR>", { noremap = true })
-- map("n", "<leader>qo", ":BufDelOthers<CR>", { noremap = true })
map("n", "<leader><BS>", ":Bdel<CR>", silent)

-- previous / next buffer
map("n", "<S-tab>", ":bp<CR>", silent)
map("n", "<tab>", ":bn<CR>", silent)

map(
  "n",
  "<leader>fg",
  "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Live Grep with Args" }
)

-- lsp quick fix
map(
  "n",
  "<leader>qd",
  vim.diagnostic.setqflist,
  { desc = "Quickfix diagnostics" }
)
map("n", "<leader>qf", vim.diagnostic.open_float, { desc = "Open float" })
map("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "LSP hover" })
-- map("n", "<leader>qr", vim.lsp.buf.references, { desc = "LSP references" }) grr
-- map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Apply quickfix" }) gra

-- LSP code actions preview
map({ "v", "n" }, "gf", function()
  require("actions-preview").code_actions()
end, { desc = "Code actions preview" })

map("n", "<leader>co", "<cmd>copen<CR>", { desc = "Open quickfix list" })
map("n", "<leader>cc", "<cmd>cclose<CR>", { desc = "Close quickfix list" })

map("n", "<C-Left>", "<cmd>vertical resize -1<CR>", silent)
map("n", "<C-Right>", "<cmd>vertical resize +1<CR>", silent)
map("n", "<C-Up>", "<cmd>resize -1<CR>", silent)
map("n", "<C-Down>", "<cmd>resize +1<CR>", silent)

map("n", "<A-h>", function()
  require("smart-splits").resize_left()
end, silent)
map("n", "<A-j>", function()
  require("smart-splits").resize_down()
end, silent)
map("n", "<A-k>", function()
  require("smart-splits").resize_up()
end, silent)
map("n", "<A-l>", function()
  require("smart-splits").resize_right()
end, silent)

map(
  "n",
  "[d",
  "<cmd>lua vim.diagnostic.jump({count=-1, float=true})<CR>",
  silent
)
map(
  "n",
  "]d",
  "<cmd>lua vim.diagnostic.jump({count=-1, float=true})<CR>",
  silent
)

map(
  "n",
  "<leader>;",
  "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>",
  silent
)

map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", silent)

-- toggle terminal
-- map("n", "<C-t>", "<cmd>split term://zsh<CR>", silent)
-- map("n", "<leader>s", "<cmd>split<CR>", silent)
map("n", "<C-t>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

-- persistence
map("n", "<leader>qs", function()
  require("persistence").load()
end)
-- select a session to load
map("n", "<leader>qS", function()
  require("persistence").select()
end)
-- load the last session
map("n", "<leader>ql", function()
  require("persistence").load({ last = true })
end)

-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", function()
  require("persistence").stop()
end)
