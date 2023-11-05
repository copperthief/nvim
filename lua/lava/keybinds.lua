
vim.g.mapleader = ' '

opts = { noremap = true, silent = false }

local keybinds = {

  -- dvorak (going to need to change extra mappings and add a ton)
  vim.api.nvim_set_keymap('n', 't', 'j', opts),
  vim.api.nvim_set_keymap('v', 't', 'j', opts),
  vim.api.nvim_set_keymap('n', 'n', 'k', opts),
  vim.api.nvim_set_keymap('v', 'n', 'k', opts),
  vim.api.nvim_set_keymap('n', 's', 'l', opts),
  vim.api.nvim_set_keymap('v', 's', 'l', opts),


  -- lspconfig
  diagnostic_open_float = '<Leader>e'
}

return keybinds
