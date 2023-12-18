-- which-key settings
lvim.builtin.which_key.setup.ignore_missing = false
lvim.builtin.which_key.mappings["W"] = { "<cmd>wa!<CR>", "Save All" }
lvim.builtin.which_key.mappings["Q"] = { "<cmd>qa<CR>", "Quit All" }
lvim.builtin.which_key.mappings["<C-w>"] = {
  name = "Split Workspace",
  ["\\"] = { "<C-w>v", "Vertically" },
  ["-"] = { "<C-w>s", "Horizontally" },
  ["="] = { "<C-w>=", "Equal width and height" },
}
lvim.builtin.which_key.mappings["b"]["f"] = { "<cmd>Telescope buffers previewer=true<cr>", "Find" }
lvim.builtin.which_key.mappings["s"]["t"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Text in current buffer" }
lvim.builtin.which_key.mappings["s"]["T"] = { "<cmd>Telescope live_grep<cr>", "Text in project" }
lvim.builtin.which_key.mappings["l"]["R"] = { "<cmd>LspRestart<cr>", "Restart LSP" }
lvim.builtin.which_key.mappings["l"]["o"] = { "<cmd>ClangdSwitchSourceHeader<cr>", "Switch header and source (C++)" }
lvim.builtin.which_key.mappings["g"]["s"] = { "<cmd>Telescope git_status<cr>", "Status" }
lvim.builtin.which_key.mappings["g"]["S"] = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" }

