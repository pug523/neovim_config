vim.pack.add({ "https://github.com/akinsho/toggleterm.nvim" })
require("toggleterm").setup({
  size = function(term)
    if term.direction == "vertical" then
      return vim.o.columns * 0.3
    elseif term.direction == "horizontal" then
      return 15
    else
      return 20
    end
  end,
  open_mapping = [[<C-t>]],
  shade_filetypes = {},
  direction = "vertical",
})
