local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
	return
end

-- recommended settings form nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	view = {
		hide_root_folder = true,
		adaptive_size = true,
	},
	filters = {
		dotfiles = false,
	},
	renderer = {
		icons = {
			show = {
				git = false,
			},
		},
		update_focused_file = {
			enable = true,
			update_cwd = false,
			ignore_list = {},
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},
})
