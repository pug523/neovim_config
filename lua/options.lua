local o = vim.o
local opt = vim.opt

-- Indenting
o.number = true
o.relativenumber = false
o.ignorecase = true

o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.cursorlineopt = "both" -- to enable cursorline!

o.splitbelow = true
o.splitright = true

o.pumborder = "rounded"

opt.clipboard = "unnamedplus"
opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
  "fuzzy",
  "popup",
}
opt.termguicolors = true

-- set filetype for .CBL COBOL files.
-- vim.cmd([[ au BufRead,BufNewFile *.CBL set filetype=cobol ]])

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if not client then
      return
    end
    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.cmd("highlight NormalFloat guibg=NONE")
vim.cmd("highlight FloatBorder guifg=#569CD6 guibg=NONE")
