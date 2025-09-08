-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Background and UI highlighting
vim.api.nvim_create_autocmd("ColorScheme", {
	desc = "Customise highlight groups after colorscheme loads",
	group = vim.api.nvim_create_augroup("custom-highlights", { clear = true }),
	callback = function()
		-- Transparent background
		vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", ctermbg = "NONE" })

		-- Cursor line
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "#444444", ctermbg = 233 })

		-- Float borders
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "#1e1e1e" })
	end,
})
