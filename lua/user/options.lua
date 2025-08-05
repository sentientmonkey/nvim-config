-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim
vim.opt.visualbell = true

vim.opt.showcmd = true


-- 
vim.opt.expandtab = true
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2
vim.opt.number = true
-- vim.opt.nowrap = true
-- vim.opt.wildignore+=tags
-- vim.opt.wildignore+=tmp/** 

vim.opt.showmatch = true
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wildmode = "list:longest"
vim.opt.scrolloff = 3
vim.opt.laststatus = 3

vim.opt.smartcase = true
vim.opt.autoread = true

vim.opt.hls = true

-- vim.opt.completeopt=longest,menuone " autocomplete improved

vim.opt.listchars.tab = "»·"
vim.opt.listchars.trail = "·"
vim.opt.list = true

vim.opt.clipboard = "unnamed"

vim.opt.colorcolumn = "100"
vim.opt.autoread = true

