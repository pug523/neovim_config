require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- close file
-- map("n", "<leader>q", ":bd<CR>", { noremap = true })
-- nvim-bufdel
map("n", "<leader>qq", ":BufDel<CR>", { noremap = true })

-- toggle terminal
map("n", "<C-\\>", ":ToggleTerm<CR>", { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- lsp quick fix
vim.keymap.set("n", "<leader>qf", ":copen<CR>", { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close quickfix list" })
