return {
	{
		"EdenEast/nightfox.nvim",
		priority = 10000,
		init = function()
			vim.cmd.colorscheme("terafox")
			vim.cmd.hi("Comment gui=none")
		end,
	},
}
