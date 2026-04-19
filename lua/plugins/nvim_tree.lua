vim.pack.add({ "https://github.com/nvim-tree/nvim-tree.lua" })

local options = {
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    -- update_root = true,
  },
}

require("nvim-tree").setup(options)
