local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocal = "\\"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- close file
map("n", "<leader>ql", ":bd<CR>", { noremap = true })

-- nvim-bufdel
map("n", "<leader>qq", ":BufDel<CR>", { noremap = true })
map("n", "<leader>qo", ":BufDelOthers<CR>", { noremap = true })

map(
  "n",
  "<leader>fg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
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
map("n", "<leader>qr", vim.lsp.buf.references, { desc = "LSP references" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Apply quickfix" })
map("n", "<leader>co", ":copen<CR>", { desc = "Open quickfix list" })
map("n", "<leader>cc", ":cclose<CR>", { desc = "Close quickfix list" })

map("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })
map("n", "<C-Up>", ":resize -2<CR>", { silent = true })
map("n", "<C-Down>", ":resize +2<CR>", { silent = true })

map("n", "<leader>s", ":split<CR>", { silent = true })

map(
  "n",
  "<leader>;",
  ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>",
  { silent = true }
)

map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })

-- toggle terminal
-- map("n", "<C-t>", ":split term://zsh<CR>", { silent = true })
map("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
