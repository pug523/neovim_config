local options = {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    -- "fish",
    "go",
    -- "gomod",
    -- "gosum",
    -- "gotmpl",
    -- "gowork",
    -- "haskell",
    "javascript",
    "lua",
    "luadoc",
    "make",
    "markdown",
    -- "odin",
    "printf",
    "python",
    "rust",
    "toml",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
    "zig",
  },

  highlight = {
    enable = true,
  },

  indent = { enable = true },
}

-- require("nvim-treesitter.configs").setup(options)
require("nvim-treesitter.config").setup(options)

vim.filetype.add({
  extension = {
    al = "alcy",
    alcf = "alcy_config",
  },
})

vim.treesitter.language.register("rust", { "alcy", "alcf" })
