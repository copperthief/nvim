local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  
	-- colorschemes
	{ "savq/melange", priority = 1000 },
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{ "shaunsingh/nord.nvim", priority = 1000 },
  { "rebelot/kanagawa.nvim", priority = 1000 },
	{ "bluz71/vim-nightfly-colors", name = "nightfly", priority = 1000 },
  { "NLKNguyen/papercolor-theme", priority = 1000 },
  { "joshdick/onedark.vim", priority = 1000 },
  { "romainl/Apprentice", priority = 1000 },

  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}

}

require("lazy").setup(plugins, opts)
