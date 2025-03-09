-- usually
vim.api.nvim_set_keymap("n", "q", "<cmd>q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "qa", "<cmd>qa<CR>", { noremap = true, silent = true })

vim.o.clipboard = "unnamedplus"

-- nvim-tree
vim.keymap.set("n", "e", ":NvimTreeOpen<CR>")

-- deol.nvim
-- terminal start
vim.api.nvim_set_keymap(
	"n",
	"1t",
	":call deol#start(#{ command: 'zsh', split: 'floating', winheight: 700, winwidth: 900, winrow: (&lines - 700) / 2, wincol: (&columns - 900) / 2 })<CR>",
	{ noremap = true, silent = true }
)

-- terminal stop
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true })
vim.opt.shell = "zsh"
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = '"'
-- 行番号を表示する設定
vim.opt.number = true
-- 現在の listchars（不可視文字の表示設定）を取得(タブやスペースなどの不可視文字をどのように表示するかを設定するオプション)
local current_listchars = vim.opt.listchars:get()
-- スペースを .（ドット）で表示する設定(listchars の space の値を "." に変更する)
current_listchars.space = "."
-- 変更した listchars を再設定(current_listchars に追加した space = "." を反映させる)
vim.opt.listchars = current_listchars
-- 不可視文字を表示する(set list（VimScript の set list と同じ意味）)
vim.opt.list = true
