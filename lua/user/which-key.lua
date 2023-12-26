-- which-key settings
lvim.builtin.which_key.setup.ignore_missing = false
lvim.builtin.which_key.mappings["W"] = { "<cmd>wa!<CR>", "Save All" }
lvim.builtin.which_key.mappings["Q"] = { "<cmd>qa<CR>", "Quit All" }
lvim.builtin.which_key.mappings["\\"] = {
  name = "Split Workspace",
  ["\\"] = { "<C-w>v", "Vertically" },
  ["|"] = { "<C-w>s", "Horizontally" },
  ["="] = { "<C-w>=", "Equal width and height" },
	["f"] = {
		name = "Focus",
		["\\"] = { "<C-w>|", "Vertical Workspace" },
		["|"] = { "<C-w>_", "Horizontal Workspace" },
	}
}
lvim.builtin.which_key.mappings["b"]["f"] = { "<cmd>Telescope buffers previewer=true<cr>", "Find" }
lvim.builtin.which_key.mappings["s"]["t"] = { "<cmd>Telescope live_grep<cr>", "Text in project" }
lvim.builtin.which_key.mappings["s"]["T"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Text in document" }
lvim.builtin.which_key.mappings["l"]["R"] = { "<cmd>LspRestart<cr>", "Restart LSP" }
lvim.builtin.which_key.mappings["l"]["s"] = { "<cmd>lua require('telescope.builtin').lsp_document_symbols({ symbol_width=50 })<cr>", "Document symbols" }
lvim.builtin.which_key.mappings["l"]["o"] = { "<cmd>ClangdSwitchSourceHeader<cr>", "Switch header and source (C++)" }
lvim.builtin.which_key.mappings["l"]["d"] = { "<cmd>Trouble document_diagnostics<cr>", "Document diagnostics" }
lvim.builtin.which_key.mappings["l"]["w"] = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace diagnostics" }
lvim.builtin.which_key.mappings["g"]["s"] = { "<cmd>Telescope git_status<cr>", "Status" }
lvim.builtin.which_key.mappings["g"]["S"] = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" }
lvim.builtin.which_key.mappings["T"]["I"] = { "<cmd>Inspect<cr>", "Inspect" }

