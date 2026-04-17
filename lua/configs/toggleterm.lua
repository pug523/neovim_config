require("toggleterm").setup({
  open_mapping = [[<c-t>]],
  close_on_exit = true,
  start_in_insert = false,
  persist_size = true,
  direction = "horizontal",
  float_opts = {
    border = "curved",
    winblend = 3,
  },
})

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
