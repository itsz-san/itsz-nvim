-----------------------------------------------------------
-- DEFAULT OPTIONS
-- View the quick reference for options within NeoVim
-- via `:help option-list`. The options are group based on 
-- option-window which can be accessed via `:option`.
-----------------------------------------------------------

-----------------------------------------------------------
-- GENERAL SETTINGS
-----------------------------------------------------------
vim.opt.updatetime  = 400
vim.opt.synmaxcol   = 300
vim.opt.clipboard   = "unnamedplus"
vim.opt.timeoutlen  = 100
vim.opt.ttimeoutlen = 10


---- BACKUP SETINGS (defaults are commented out)
-----------------------------------------------------------
-- vim.opt.backup      = false
-- vim.opt.backupcopy  = auto
-- vim.opt.backupdir   = ".,$XDG_STATE_HOME/nvim/backup//"
-- vim.opt.backupext   = "~"
-- vim.opt.backupskip  = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*"


---- UNDO SETTINGS (defaults are commented out)
-----------------------------------------------------------
vim.opt.undofile   = true
-- vim.opt.undodir    = "$XDG_STATE_HOME/nvim/undo//"
-- vim.opt.undolevels = 1000
-- vim.opt.undoreload = 10000


-----------------------------------------------------------
-- USER INTERFACE SETTINGS
-----------------------------------------------------------
vim.opt.termguicolors = true
vim.cmd "colorscheme slate"

---- DISPLAY
-----------------------------------------------------------
vim.opt.lazyredraw  = true
vim.opt.redrawtime  = 1500

vim.opt.scrolloff   = 10
vim.opt.wrap        = false
vim.opt.linebreak   = true

vim.opt.cursorline      = true
vim.opt.cursorcolumn    = true
vim.opt.number          = true
vim.opt.numberwidth     = 4
vim.opt.relativenumber  = true
vim.opt.signcolumn      = "yes"

vim.opt.list      = true
vim.opt.listchars = {
  tab       = '|-',
  trail     = '·',
  lead      = '·',
  extends   = '»',
  precedes  = '«',
  nbsp      = '×',
}

---- WINDOWS AND TABS
-----------------------------------------------------------
vim.opt.splitbelow  = true
vim.opt.splitright  = true
vim.opt.showtabline = 2

---- STATUS LINE SETTINGS
-----------------------------------------------------------
vim.opt.laststatus  = 3


-----------------------------------------------------------
-- EDITOR SETTINGS 
-----------------------------------------------------------
vim.opt.textwidth   = 100 -- enforce hard wrap
vim.opt.matchpairs  = { '(:)','{:}','[:]','<:>' }

---- TABS AND INDENTING
-----------------------------------------------------------
vim.opt.autoindent  = true
vim.opt.smartindent = true
vim.opt.expandtab   = true
vim.opt.shiftwidth  = 2
vim.opt.tabstop     = 2
vim.opt.softtabstop = 2
