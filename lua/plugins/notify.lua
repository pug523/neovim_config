vim.pack.add({
  "https://github.com/rcarriga/nvim-notify",
})

require("notify").setup({
  background_colour = "#ffffff",
  merge_duplicates = true,
})
