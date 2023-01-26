local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.live_grep, {})

local actions = require("telescope.actions")
require("nvim-web-devicons").setup({
	override = {},
	default = true,
})
require("telescope").setup({
	defaults = {
		path_display = { "smart" },
		mappings = {
			i = {
				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,
				["<esc>"] = actions.close,
			},
		},
	},
	layout_config = {
		horizontal = {
			preview_cutoff = 100,
			preview_width = 0.6,
		},
	},
	plugins = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

require("telescope").load_extension("fzf")
