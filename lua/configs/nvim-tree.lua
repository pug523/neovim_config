vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    local wins = vim.api.nvim_list_wins()
    local tree_wins = {}
    local floating_wins = {}

    for _, w in ipairs(wins) do
      local buf = vim.api.nvim_win_get_buf(w)
      if vim.bo[buf].filetype == "NvimTree" then
        table.insert(tree_wins, w)
      end
      if vim.api.nvim_win_get_config(w).relative ~= "" then
        table.insert(floating_wins, w)
      end
    end

    if #wins - #floating_wins <= #tree_wins then
      for _, w in ipairs(tree_wins) do
        vim.api.nvim_win_close(w, true)
      end
    end
  end,
})

local function my_attach(bufnr)
  local api = require("nvim-tree.api")
  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.del("n", "<C-t>", { buffer = bufnr })
end

local options = {
  on_attach = my_attach,

  filters = {
    dotfiles = false, -- false is visible
    git_ignored = false,
  },
  disable_netrw = true,
  -- hierarchical_git_indicators = true,

  renderer = {
    root_folder_label = ":~:s?$?/..?",
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },

  view = {
    width = 35,
    side = "left",
    preserve_window_proportions = true, -- to ensure layout
  },

  actions = {
    open_file = {
      resize_window = true,
      quit_on_open = false,
    },
  },
}

require("nvim-tree").setup(options)

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    require("nvim-tree.api").tree.open()
  end,
})
