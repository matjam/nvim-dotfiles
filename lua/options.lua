local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Mouse support (click, scroll, select)
opt.mouse = "a"

-- System clipboard
opt.clipboard = "unnamedplus"

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false

-- Splits open in intuitive directions
opt.splitbelow = true
opt.splitright = true

-- Save undo history
opt.undofile = true

-- Faster update time (for git signs, etc.)
opt.updatetime = 250
opt.timeoutlen = 400

-- Don't show mode in cmdline (lualine shows it)
opt.showmode = false

-- Better completion
opt.completeopt = { "menuone", "noselect" }

-- Disable netrw (neo-tree replaces it)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
