local o = vim.o
o.relativenumber = true
o.number = true
o.mouse = 'a'
o.clipboard = 'unnamedplus'
o.autoindent = true
o.tabstop = '4'
o.shiftwidth = '4'
o.smarttab = true
o.softtabstop = '4'
o.ignorecase = true
o.smartcase = true

vim.cmd[[highlight Normal ctermbg=none]]
vim.cmd[[highlight NonText ctermbg=none]]
