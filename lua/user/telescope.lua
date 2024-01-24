-- telescope settings

lvim.builtin.which_key.mappings["g"]["S"] = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" }


local actions = require("lvim.utils.modules").require_on_exported_call "telescope.actions"

lvim.builtin.telescope.theme = "center"
lvim.builtin.telescope.defaults.path_display = { "truncate" }
lvim.builtin.telescope.defaults.prompt_prefix = lvim.icons.ui.Search .. " "
lvim.builtin.telescope.defaults.selection_caret = lvim.icons.ui.Triangle .. " "


lvim.builtin.telescope.defaults.mappings = {
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<Esc>"] = actions.close,
    ["<C-c>"] = actions.close,
    ["<C-Right>"] = actions.cycle_history_next,
    ["<C-Left>"] = actions.cycle_history_prev,
    ["<C-Up>"] = actions.preview_scrolling_up,
    ["<C-Down>"] = actions.preview_scrolling_down,
    ["<C-H>"] = function() vim.api.nvim_input("<C-w>") end, -- Ctrl + Backspace
    ["<C-q>"] = function(...)
        actions.smart_send_to_qflist(...)
        actions.open_qflist(...)
      end,
    ["<CR>"] = actions.select_default,
  },
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-q>"] = function(...)
      actions.smart_send_to_qflist(...)
      actions.open_qflist(...)
    end,
  },
}
-- lvim.builtin.telescope.pickers.buffers["initial_mode"] = "insert"

