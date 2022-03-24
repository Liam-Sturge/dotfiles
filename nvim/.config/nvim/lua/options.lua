local opt = vim.opt -- to set options

opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.completeopt = { "menu,menuone,noselect" }
opt.encoding = "utf-8"
opt.number = true
opt.conceallevel = 0
opt.hlsearch = true
opt.showmode = false
-- opt.showtabline = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.ignorecase = true
opt.smartcase = true
opt.swapfile = true
opt.termguicolors = true
vim.cmd([[colorscheme nightfox]])
