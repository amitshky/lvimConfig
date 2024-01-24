local isWindows = not vim.fn.has('macunix')
if (isWindows) then
  -- Enable powershell as your default shell
  vim.opt.shell = "pwsh.exe -NoLogo"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.cmd [[
      let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
      let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
      set shellquote= shellxquote=
    ]]

  -- Set a compatible clipboard manager
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
end

-- lvim settings
vim.g.skip_tscontext_commentstring_module = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.virtualedit = "onemore"
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.list = true
vim.opt.listchars = "tab:→→,space:∙"
vim.opt.scrolloff = 0

-- colorscheme
lvim.colorscheme = "lunarplus"

-- relative file path in lualine
lvim.builtin.lualine.sections.lualine_c = {
  {
    'filename',
    path = 1,
  }
}

-- treesitter
lvim.builtin.treesitter.indent = { enable = false }

-- toggle term
lvim.builtin.terminal.direction = "float"
