return {

  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.treesitter")
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require("configs.lspconfig")
    end,
  },

  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   event = "VeryLazy",
  --   dependencies = { "nvim-lspconfig" },
  --   config = function()
  --     require("configs.mason-lspconfig")
  --   end,
  -- },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.lint")
    end,
  },

  {
    "rshkarin/mason-nvim-lint",
    event = "VeryLazy",
    dependencies = { "nvim-lint" },
    config = function()
      require("configs.mason-lint")
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("configs.conform")
    end,
  },

  {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = { "conform.nvim" },
    config = function()
      require("configs.mason-conform")
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    config = function()
      require("configs.toggleterm")
    end,
  },

  {
    "p00f/clangd_extensions.nvim",
    event = "VeryLazy",
    config = function()
      require("configs.clangd_extensions")
    end,
  },

  {
    "ojroques/nvim-bufdel",
    event = "VeryLazy",
    config = true,
  },

  -- {
  --   "nvim-lua/plenary.nvim",
  --   event = "VeryLazy",
  --   config = true,
  -- },

  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "Shougo/ddx.vim",
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    config = function() end,
  },
  -- {
  --   "Mythos-404/xmake.nvim",
  --   event = "VeryLazy",
  --   config = true,
  -- },
}
