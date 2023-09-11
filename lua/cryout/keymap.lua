lvim.builtin.which_key.mappings["w"] = {
	name = "Window",
	w = { "<cmd>wincmd l<CR>", "Next Window" },
	e = { "<cmd>wincmd h<CR>", "Previous Window" },
	h = { "<cmd>vertical resize +5<CR>", "Enlarge" },
	l = { "<cmd>vertical resize -5<CR>", "Shrink" },
}

lvim.builtin.which_key.mappings["e"] = {
	name = "NvimTree",
	e = { "<cmd>NvimTreeFocus<CR>", "Focus" },
	w = { "<cmd>NvimTreeClose<CR>", "Close" },
}

vim.api.nvim_set_keymap("n", "<m-d>", "<cmd>RustOpenExternalDocs<Cr>", { noremap = true, silent = true })

lvim.builtin.which_key.mappings["C"] = {
	name = "Rust",
	r = { "<cmd>RustRunnables<Cr>", "Runnables" },
	t = { "<cmd>lua _CARGO_TEST()<cr>", "Cargo Test" },
	m = { "<cmd>RustExpandMacro<Cr>", "Expand Macro" },
	c = { "<cmd>RustOpenCargo<Cr>", "Open Cargo" },
	p = { "<cmd>RustParentModule<Cr>", "Parent Module" },
	d = { "<cmd>RustDebuggables<Cr>", "Debuggables" },
	v = { "<cmd>RustViewCrateGraph<Cr>", "View Crate Graph" },
	R = {
		"<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
		"Reload Workspace",
	},
	o = { "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
	y = { "<cmd>lua require'crates'.open_repository()<cr>", "[crates] open repository" },
	P = { "<cmd>lua require'crates'.show_popup()<cr>", "[crates] show popup" },
	i = { "<cmd>lua require'crates'.show_crate_popup()<cr>", "[crates] show info" },
	f = { "<cmd>lua require'crates'.show_features_popup()<cr>", "[crates] show features" },
	D = { "<cmd>lua require'crates'.show_dependencies_popup()<cr>", "[crates] show dependencies" },
}

lvim.builtin.which_key.mappings["y"] = {
	name = "Hop",
	e = { "<cmd>HopChar2<CR>", "To Char" },
	w = { "<cmd>HopWord<CR>", "To Word" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Utility",
	e = { "<cmd>Telescope<CR>", "Telescope" },
	t = { "<cmd>ToggleTerm<CR>", "Terminal" },
}

lvim.builtin.which_key.mappings["l"] = { "<cmd>Telescope live_grep<CR>", "Live grep" }

lvim.keys.normal_mode["<C-n>"] = "<cmd>MCstart<CR>"
