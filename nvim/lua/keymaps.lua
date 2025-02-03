-- usually
vim.api.nvim_set_keymap("n", "q", "<cmd>q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "qa", "<cmd>qa<CR>", { noremap = true, silent = true })

vim.o.clipboard = "unnamedplus"

-- nvim-tree
vim.keymap.set("n", "e", ":NvimTreeOpen<CR>")
