vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- <jj> to <esc>
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
