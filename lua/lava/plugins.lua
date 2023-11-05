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
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "saadparwaiz1/cmp_luasnip" },
  
  -- snippets
  { "L3MON4D3/LuaSnip" }, --engine
  { "rafamadriz/friendly-snippets" }, --package

  -- lsp
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },


  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },



}


require("lazy").setup(plugins, opts)

require("mason").setup()
