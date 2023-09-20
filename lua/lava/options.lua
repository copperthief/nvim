local options = {
	
	-- can you change the font used outside the editor?
	guifont = "FantasqueSansM Nerd Font Mono",

	backup = false,  --change after backupdir is fixed
	clipboard = "unnamedplus",    -- use system clipboard
	cmdheight = 2,
	conceallevel = 0,              -- see `` in markdown
	fileencoding = "utf-8",
	showmode = true,
	showtabline = 2,
	autoindent = true,
	smartindent = true,
	splitbelow = true,             -- new windows go under
	undofile = true,               -- undo list persists across sessions
	updatetime = 300,              -- helps quicken completion
	expandtab = true,              -- convert tabs to spaces
	shiftwidth = 2,                -- spaces per indentation
	tabstop = 2,                   -- 2 spaces per tab
	cursorline = true,             -- highlight current line
	wrap = false,
	scrolloff = 8,                 -- keeps cursor ~centered
	sidescrolloff = 8,             -- ^^^

	-- line numbers
	number = true,
	relativenumber = true,
	numberwidth = 4,
	signcolumn = "yes",


        -- search
	hlsearch = true,               -- highlight matches on prev search
	ignorecase = true,

	-- idk if these are significant
	pumheight = 10,                -- popup menu height
	splitright = true,
	termguicolors = true,
	timeoutlen = 100

}

for key, val in pairs(options) do
        vim.opt[key] = val
end

-- send backups to a designated folder so they don't clutter
-- does this even work? NO fix this later
 -- vim.o.backupdir = "$HOME/.vimbackups//"

-- remove default colorschemes from tablist
vim.cmd "set wildignore+=darkblue.vim,default.vim,delek.vim,elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,pablo.vim,peachpuff.vim,ron.vim,shine.vim,torte.vim,zellner.vim,lunaperche.vim"
