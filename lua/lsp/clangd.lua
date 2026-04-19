return {
  -- cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  root_markers = { ".clangd", "compile_commands.json" },
  filetypes = { "c", "cpp" },
}
