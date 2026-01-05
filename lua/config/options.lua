local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Mouse mode, can be used to resize splits
opt.mouse = "a"
opt.showmode = false
opt.termguicolors = true

-- tabspace to 4 spaces
opt.shiftwidth = 4
opt.tabstop = 4
-- spaces instead of tabs
vim.o.expandtab = true
opt.breakindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

-- Editor behaviour
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.scrolloff = 10
opt.cursorline = true
opt.undofile = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Whitespace
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Python tabspace configuration
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
	end,
})
