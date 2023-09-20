require "lava.options"
require "lava.currenttheme"    -- make it so if this doesn't work lua wont crash

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
	"savq/melange",
	"ellisonleao/gruvbox.nvim",
	"shaunsingh/nord.nvim",
	"rebelot/kanagawa.nvim",
	{ "bluz71/vim-nightfly-colors", name = "nightfly" },
	"NLKNguyen/papercolor-theme",
	"joshdick/onedark.vim",
	"romainl/Apprentice"
}

require("lazy").setup(plugins, opts)
