-- cmp keybindings
local cmp = require("lvim.utils.modules").require_on_index "cmp"
local cmp_mapping = require "cmp.config.mapping"

-- turn off mapping for down and up keys for code completion
lvim.builtin.cmp.mapping["<Down>"] = cmp_mapping(function(fallback)
    cmp_mapping.close()
    fallback()
  end,
  { "i" }
)
lvim.builtin.cmp.mapping["<Up>"] = cmp_mapping(function(fallback)
    cmp_mapping.close()
    fallback()
  end,
  { "i" }
)
lvim.builtin.cmp.mapping["<C-c>"] = cmp_mapping.complete() -- Ctrl+space not supported in powershell
