local o = vim.o

-- Indenting
o.number = true
o.relativenumber = false
o.ignorecase = false

o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.cursorlineopt ='both' -- to enable cursorline!

o.splitbelow = true
o.splitright = true

-- set filetype for .CBL COBOL files.
-- vim.cmd([[ au BufRead,BufNewFile *.CBL set filetype=cobol ]])
