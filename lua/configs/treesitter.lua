local options = {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "fish",
    -- "go",
    -- "gomod",
    -- "gosum",
    -- "gotmpl",
    -- "gowork",
    -- "haskell",
    "lua",
    "luadoc",
    -- "make",
    "markdown",
    -- "odin",
    "printf",
    -- "python",
    "rust",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)

vim.filetype.add({
  extension = {
    al = "alcy",
    alcf = "alcy_config",
  },
})

vim.treesitter.language.register("rust", { "alcy", "alcf" })
