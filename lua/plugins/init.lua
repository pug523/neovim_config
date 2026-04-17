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

  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lspconfig" },
    -- config = function()
    --   require("configs.mason-lspconfig")
    -- end,
    config = true,
  },

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
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
      require("configs.nvim-tree")
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
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
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    config = function()
      require("configs.telescope")
    end,
  },

  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    cmd = "Trouble",
    opts = {},
  },

  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --   },
  -- },

  {
    "folke/todo-comments.nvim",
    opts = {},
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },

  {
    "stevearc/overseer.nvim",
    ---@module 'overseer'
    ---@type overseer.SetupOpts
    opts = {},
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^9",
    -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
    -- No need for lazy.nvim to lazy-load it.
    lazy = false,
  },

  {
    "mfussenegger/nvim-dap",
    lazy = "VeryLazy",
  },

  {
    "Mythos-404/xmake.nvim",
    version = "^3",
    lazy = true,
    event = "BufReadPost",
    config = true,
  },

  --[[

  ---@module "neominimap.config.meta"
  {
    "Isrothy/neominimap.nvim",
    version = "v3.x.x",
    lazy = false,
    keys = {
      -- Global Minimap Controls
      {
        "<leader>nm",
        "<cmd>Neominimap Toggle<cr>",
        desc = "Toggle global minimap",
      },
      {
        "<leader>no",
        "<cmd>Neominimap Enable<cr>",
        desc = "Enable global minimap",
      },
      {
        "<leader>nc",
        "<cmd>Neominimap Disable<cr>",
        desc = "Disable global minimap",
      },
      {
        "<leader>nr",
        "<cmd>Neominimap Refresh<cr>",
        desc = "Refresh global minimap",
      },

      -- Window-Specific Minimap Controls
      {
        "<leader>nwt",
        "<cmd>Neominimap WinToggle<cr>",
        desc = "Toggle minimap for current window",
      },
      {
        "<leader>nwr",
        "<cmd>Neominimap WinRefresh<cr>",
        desc = "Refresh minimap for current window",
      },
      {
        "<leader>nwo",
        "<cmd>Neominimap WinEnable<cr>",
        desc = "Enable minimap for current window",
      },
      {
        "<leader>nwc",
        "<cmd>Neominimap WinDisable<cr>",
        desc = "Disable minimap for current window",
      },

      -- Tab-Specific Minimap Controls
      {
        "<leader>ntt",
        "<cmd>Neominimap TabToggle<cr>",
        desc = "Toggle minimap for current tab",
      },
      {
        "<leader>ntr",
        "<cmd>Neominimap TabRefresh<cr>",
        desc = "Refresh minimap for current tab",
      },
      {
        "<leader>nto",
        "<cmd>Neominimap TabEnable<cr>",
        desc = "Enable minimap for current tab",
      },
      {
        "<leader>ntc",
        "<cmd>Neominimap TabDisable<cr>",
        desc = "Disable minimap for current tab",
      },

      -- Buffer-Specific Minimap Controls
      {
        "<leader>nbt",
        "<cmd>Neominimap BufToggle<cr>",
        desc = "Toggle minimap for current buffer",
      },
      {
        "<leader>nbr",
        "<cmd>Neominimap BufRefresh<cr>",
        desc = "Refresh minimap for current buffer",
      },
      {
        "<leader>nbo",
        "<cmd>Neominimap BufEnable<cr>",
        desc = "Enable minimap for current buffer",
      },
      {
        "<leader>nbc",
        "<cmd>Neominimap BufDisable<cr>",
        desc = "Disable minimap for current buffer",
      },

      ---Focus Controls
      { "<leader>nf", "<cmd>Neominimap Focus<cr>", desc = "Focus on minimap" },
      { "<leader>nu", "<cmd>Neominimap Unfocus<cr>", desc = "Unfocus minimap" },
      {
        "<leader>ns",
        "<cmd>Neominimap ToggleFocus<cr>",
        desc = "Switch focus on minimap",
      },
    },
    init = function()
      -- The following options are recommended when layout == "float"
      vim.opt.wrap = false
      vim.opt.sidescrolloff = 36 -- Set a large value

      --- Put your configuration here
      ---@type Neominimap.UserConfig
      vim.g.neominimap = {
        auto_enable = true,
      }
    end,
  },
  --]]
}
