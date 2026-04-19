vim.pack.add{
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/folke/trouble.nvim" },
  { src = "https://github.com/folke/noice.nvim" },
  { src = "https://github.com/williamboman/mason-lspconfig.nvim" },
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
  { src = "https://github.com/p00f/clangd_extensions.nvim" },
  { src = "https://github.com/ojroques/nvim-bufdel" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim" },
  { src = "https://github.com/akinsho/toggleterm.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" }
}

require("nvim-treesitter").setup()
require("trouble").setup()
require("nvim-tree").setup()
require("clangd_extensions").setup()
require("bufdel").setup()
require("telescope").setup()
require("toggleterm").setup()
require("oil").setup()
