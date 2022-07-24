-- Dashboard (Alpha)
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	"  ▄████▄   ██▀███   ▄▄▄      ▒███████▒▓██   ██▓ ▄████▄   ▄▄▄     ▄▄▄█████▓",
	" ▒██▀ ▀█  ▓██ ▒ ██▒▒████▄    ▒ ▒ ▒ ▄▀░ ▒██  ██▒▒██▀ ▀█  ▒████▄   ▓  ██▒ ▓▒",
	" ▒▓█    ▄ ▓██ ░▄█ ▒▒██  ▀█▄  ░ ▒ ▄▀▒░   ▒██ ██░▒▓█    ▄ ▒██  ▀█▄ ▒ ▓██░ ▒░",
	" ▒▓▓▄ ▄██▒▒██▀▀█▄  ░██▄▄▄▄██   ▄▀▒   ░  ░ ▐██▓░▒▓▓▄ ▄██▒░██▄▄▄▄██░ ▓██▓ ░ ",
	" ▒ ▓███▀ ░░██▓ ▒██▒ ▓█   ▓██▒▒███████▒  ░ ██▒▓░▒ ▓███▀ ░ ▓█   ▓██▒ ▒██▒ ░ ",
	" ░ ░▒ ▒  ░░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░▒▒ ▓░▒░▒   ██▒▒▒ ░ ░▒ ▒  ░ ▒▒   ▓▒█░ ▒ ░░   ",
	"   ░  ▒     ░▒ ░ ▒░  ▒   ▒▒ ░░░▒ ▒ ░ ▒ ▓██ ░▒░   ░  ▒     ▒   ▒▒ ░   ░    ",
	" ░          ░░   ░   ░   ▒   ░ ░ ░ ░ ░ ▒ ▒ ░░  ░          ░   ▒    ░      ",
	" ░ ░         ░           ░  ░  ░ ░     ░ ░     ░ ░            ░  ░        ",
	" ░                           ░         ░ ░     ░                          ",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
	dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("c", "  > Neovim Config", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("v", "  > Vimwiki", ":VimwikiIndex<CR>"),
	dashboard.button("p", "  > Web Page", ":e ~/Coding/blog/config.yaml | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button(
		"t",
		"  > Thesis",
		":e ~/Documents/Clases/Thesis/thesis.tex | :cd%:p:h | split . | wincmd k | pwd<CR>"
	),
	dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = "On my way to success"
-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
