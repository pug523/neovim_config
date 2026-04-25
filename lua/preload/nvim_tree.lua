vim.pack.add({ "https://github.com/nvim-tree/nvim-tree.lua" })

local options = {
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = false,
    update_root = true,
  },
  actions = {
    file_popup = {
      open_win_config = {
        border = "rounded",
      },
    },
    open_file = {
      resize_window = false,
    },
  },
}

require("nvim-tree").setup(options)
