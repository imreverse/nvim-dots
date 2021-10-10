local key = vim.api.nvim_set_keymap

-- PLUGIN MAPPINGS
vim.cmd('cnoreabbrev PC PackerClean')
vim.cmd('cnoreabbrev PI PackerInstall')
vim.cmd('cnoreabbrev PS PackerSync')

-- Function{} code fold
key('n', 'zc', '[{zf%', { noremap = true, silent = true })

-- Unmap shift+J
key('n', '<S-j>', '<NOP>', { noremap = true })
key('v', '<S-j>', '<NOP>', { noremap = true })
-- This unsets the "last search pattern" register by hitting return
key('n', '<ESC>', ':noh<CR><CR>k', { noremap = true, silent = true })

-- Don't save change,delete to clipboard
key('v', 'd', '\"_d', { noremap = true })
key('n', 'd', '\"_d', { noremap = true })
key('v', 'c', '\"_c', { noremap = true })
key('n', 'c', '\"_c', { noremap = true })

-- Select All
key('n', '<C-a>', 'ggVG', { noremap = true })
key('i', '<C-a>', '<ESC>ggVG', { noremap = true })

-- Move b/w splits
key('n', '<A-h>', '<C-w>h', { noremap = true })
key('n', '<A-j>', '<C-w>j', { noremap = true })
key('n', '<A-k>', '<C-w>k', { noremap = true })
key('n', '<A-l>', '<C-w>l', { noremap = true })

-- Resize Splits
key('n', '<C-h>', ':vert resize -2<CR>', { noremap = true, silent = true })
key('n', '<C-l>', ':vert resize +2<CR>', { noremap = true, silent = true })
key('n', '<C-j>', ':resize -1<CR>', { noremap = true, silent = true })
key('n', '<C-k>', ':resize +1<CR>', { noremap = true, silent = true })

-- Change working directory to current file's directory
-- key('n', '<Leader>da', ':cd %:p:h<CR>', { noremap = true })
-- key('n', '<Leader>cd', ':lcd %:p:h | NERDTreeCWD<CR>', { noremap = true })

key('n', '<Leader>vv', ':e $HOME/.config/nvim/init.lua<CR>', { noremap = true })

vim.cmd('cnoreabbrev H vert h')
-- cnoreabbrev H vert h

-- Session Management
key('n', '<Leader>ss', ':source $HOME/.config/nvim/session/', { noremap = true })
key('n', '<Leader>sv', ':mksession! $HOME/.config/nvim/session/', { noremap = true })
-- To save session with updated vimrc settings
-- Try ':set sessionoptions-=options', reload your session
-- then restore it with ':set sessionoptions+=options'.
-- Hack for removing a file from buffer completely
-- This is because when session is rewritten, file
-- isn't removed from the session [Only for vim maybe]
-- cnoreabbrev bd bd <bar> argd*
