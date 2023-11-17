vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i","jj",'<Esc>')

vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '>-2<CR>gv=gv")

vim.keymap.set("x","<leader>p","\"_dP")

--nvim-tree
vim.keymap.set("n","<leader>e",":NvimTreeToggle<cr>",opts)

-- Vim panes navigation
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

