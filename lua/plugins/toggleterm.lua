vim.pack.add({ "https://github.com/akinsho/toggleterm.nvim" })
require("toggleterm").setup({
  size = 88,
  open_mapping = [[<C-t>]],
  shade_filetypes = {},
  direction = "vertical",
})
