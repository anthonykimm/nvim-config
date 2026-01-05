return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{
		"f-person/git-blame.nvim",
		-- load the plugin at startup
		event = "VeryLazy",
		-- Because of the keys part, you will be lazy loading this plugin.
		-- The plugin will only load once one of the keys is used.
		-- If you want to load the plugin at startup, add something like event = "VeryLazy",
		-- or lazy = false. One of both options will work.
		config = function()
			local gitblame = require("gitblame")
			vim.keymap.set("n", "<leader>gb", gitblame.toggle, { desc = "[G]it [B]lame" })

			gitblame.setup({
				enabled = false,
				message_template = " <author> • <summary> • <date> • <<sha>>",
				-- date_format = "%d-%m-%Y %H:%M",
				date_format = "%r",
				virtual_text_column = 80,
				message_when_not_committed = "This is your work you dumbahh",
				highlight_group = "Label",
			})
		end,
	},
	{
		"sindrets/diffview.nvim",
		config = function()
			local map = vim.keymap.set

			-- Toggle diff view
			map("n", "<leader>gd", function()
				local view = require("diffview.lib").get_current_view()
				if view then
					vim.cmd("DiffviewClose")
				else
					vim.cmd("DiffviewOpen")
				end
			end, { desc = "Toggle [G]it [D]iff view" })
		end,
	},
}
