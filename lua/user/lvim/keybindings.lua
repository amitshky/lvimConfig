-- lvim keybindings
lvim.keys.insert_mode = {
  -- Move current line / block with Alt-j/k ala vscode.
  ["<A-j>"] = "<Esc>:m .+1<CR>==gi",

  -- Move current line / block with Alt-j/k ala vscode.
  ["<A-k>"] = "<Esc>:m .-2<CR>==gi",

  -- navigation
  ["<A-Up>"] = "<C-\\><C-N><C-w>k",
  ["<A-Down>"] = "<C-\\><C-N><C-w>j",
  ["<A-Left>"] = "<C-\\><C-N><C-w>h",
  ["<A-Right>"] = "<C-\\><C-N><C-w>l",

  -- Ctrl + Backspace
  ["<C-H>"] = "<C-w>",
  -- delete line
  -- ["<C-d>"] = "<Esc>ddi",

  -- navigation
  -- ["<C-k>"] = "<Up>",
  -- ["<C-j>"] = "<Down>",
  -- ["<C-h>"] = "<Left>",
  -- ["<C-l>"] = "<Right>",

  -- Remapping keys to work for wrapped lines
  ["<Home>"] = "<Esc>lg^i",
  ["<End>"] = "<Esc>lg$i",
  ["<Up>"] = "<Esc>gka",
  ["<Down>"] = "<Esc>gja",

  -- Unindent
  ["<S-Tab>"] = "<C-D>",

  -- Undo and Redo
  -- ["<C-z>"] = "<Esc>ui",
  -- ["<C-r>"] = "<Esc><C-r>i",
}
lvim.keys.normal_mode = {
  -- Better window movement
  ["<C-h>"] = "<C-w>h",
  ["<C-j>"] = "<C-w>j",
  ["<C-k>"] = "<C-w>k",
  ["<C-l>"] = "<C-w>l",

  -- Resize with arrows
  ["<C-Up>"] = ":resize +2<CR>",
  ["<C-Down>"] = ":resize -2<CR>",
  ["<C-Left>"] = ":vertical resize -2<CR>",
  ["<C-Right>"] = ":vertical resize +2<CR>",

  -- Move current line / block with Alt-j/k a la vscode.
  ["<A-j>"] = ":m .+1<CR>==",
  ["<A-k>"] = ":m .-2<CR>==",

  -- QuickFix
  ["]q"] = ":cnext<CR>",
  ["[q"] = ":cprev<CR>",
  ["<C-q>"] = ":call QuickFixToggle()<CR>",

  -- Navigate Buffer
  ["<S-l>"] = ":bnext<CR>",
  ["<S-h>"] = ":bprevious<CR>",

	-- Redo and Restore undo
	["U"] = "<C-r>", -- redo
	["<C-r>"] = "U", -- restore (undo) last changed line

	-- Indentation
	[">"] = ">>",
  ["<"] = "<<",

	-- Remapping keys to work for wrapped lines
	["<Home>"] = "g^",
	["<End>"] = "g$",
	["<Up>"] = "gk",
	["<Down>"] = "gj",

	["dd"] = '"add', -- prevent delete operation to pollute the unnamed register
}
lvim.keys.visual_mode = {
  -- Better indenting
  -- [">"] = ">gv",
  -- ["<"] = "<gv",

  -- Remapping keys to work for wrapped lines
  ["<home>"] = "g^",
  ["<end>"] = "g$",
  ["<up>"] = "gk",
  ["<down>"] = "gj",

	-- prevent delete operation to pollute the unnamed register
	["d"] = '"_d',
  -- ["p"] = '"0p',
  -- ["P"] = '"0P',
}
lvim.keys.visual_block_mode = {
  -- better indenting
  -- [">"] = ">gv",
  -- ["<"] = "<gv",

  -- Move current line / block with Alt-j/k ala vscode.
  ["<A-j>"] = ":m '>+1<CR>gv-gv",
  ["<A-k>"] = ":m '<-2<CR>gv-gv",

	-- prevent delete operation to pollute the unnamed register
	["d"] = '"_d',
}
lvim.keys.term_mode = {
  ["<C-H>"] = "<C-w>", -- Ctrl+Backspace
}
