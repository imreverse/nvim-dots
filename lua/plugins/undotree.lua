vim.g.undotree_WindowLayout = 3
vim.g.undotree_SplitWidth   = 40

vim.api.nvim_set_keymap('n', '<A-u>', ':UndotreeToggle<CR>', { noremap = true })
