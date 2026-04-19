-- vim.pack.add({ "https://github.com/ojroques/nvim-bufdel" })
-- require("bufdel").setup({})

-- define manually
vim.api.nvim_create_user_command("Bdel", function()
  local bufnr = vim.api.nvim_get_current_buf()
  vim.cmd("bprevious")
  vim.cmd("bd " .. bufnr)
end, {})
