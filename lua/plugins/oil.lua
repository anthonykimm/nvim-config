return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
			},
			float = {
				max_width = 0.8,
				max_height = 0.8,
			},
		},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
    keys = {
      { "\\", "<cmd>lua require('oil').toggle_float()<cr>", desc = "Toggle Oil" },
    },
	},
}
