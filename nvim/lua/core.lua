vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "yes"
vim.api.nvim_set_hl(0, "SignColumn", { ctermbg=0, bg=NONE })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg=0, bg=NONE })
vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg=0, bg=NONE })
vim.diagnostic.config{
    update_in_insert = true
}

vim.opt.expandtab = true
vim.opt.autoindent = true
-- vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.undofile = true
vim.opt.termguicolors = true


vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#000000]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

--    ╭─────╮   ┌─────┐
--    │     │   │     │
--    ╰─────╯   └─────┘
local border = {
      {"┌", "FloatBorder"},
      {"─", "FloatBorder"},
      {"┐", "FloatBorder"},
      {"│", "FloatBorder"},
      {"┘", "FloatBorder"},
      {"─", "FloatBorder"},
      {"└", "FloatBorder"},
      {"│", "FloatBorder"},
}
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end


local signs = { Error = "", Warn = "", Hint = "", Info = "¡" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end



local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

vim.opt.langmap = vim.fn.join({
    -- | `to` should be first     | `from` should be second
    escape(ru_shift) .. ';' .. escape(en_shift),
    escape(ru) .. ';' .. escape(en),
}, ',')
