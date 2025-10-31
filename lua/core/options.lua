-- env variables
vim.env.NETCOREDBG_LOG = "1"
vim.env.NETCOREDBG_LOG_LEVEL = "trace"
vim.env.NETCOREDBG_LOG_FILE = "C:/Users/robor/AppData/Local/Temp/nvim/netcoredbg.log"
vim.env.NVIM_PIPE = "nvim-server-robert"
vim.env.NVIM_ADDR = "\\\\.\\pipe\\%NVIM_PIPE%"
vim.env.FILEPATH = "%~1"
vim.env.DEBUG_DAP = true

-- globals
vim.g.user_emmet_expandabbr_key = '<Leader><Tab>'
vim.g.ts_install_prefer_git = true
vim.g.ts_install_prefer_zig = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwplugin = 1
vim.g.copilot_enabled = false
vim.g.nightflytransparent = true
vim.g.mapleader = " "

-- options
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
vim.opt.shellslash = false
vim.defer_fn(function()
  vim.opt.shellslash = false
end, 3000)
vim.opt.termguicolors = true
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.pumheight = 10
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.smartcase = true 
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.timeoutlen = 1000
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 7
vim.opt.guifont = "monospace:h17"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99

-- cmd options
vim.cmd [[
  highlight normal     guibg=none ctermbg=none
  highlight nontext    guibg=none ctermbg=none
  highlight endofbuffer guibg=none ctermbg=none
]]
