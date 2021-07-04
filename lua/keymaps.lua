-- This unsets the "last search pattern" register by hitting return
vim.api.nvim_set_keymap('n', '<ESC>', ':noh<CR><CR>', { noremap = true, silent = true })

-- Don't save d to clipboard
vim.api.nvim_set_keymap('v', 'd', '\"_d', { noremap = true })
vim.api.nvim_set_keymap('n', 'd', '\"_d', { noremap = true })

-- Select All
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<ESC>ggVG', { noremap = true })

-- Move b/w buffers
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ':BufferLinePick<CR>', { noremap = true })

-- Move b/w splits
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })

-- Change working directory to current file's directory
-- vim.api.nvim_set_keymap('n', '<Leader>da', ':cd %:p:h<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>cd', ':lcd %:p:h<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>ut', ':UndotreeToggle<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>vv', ':e $HOME/.config/nvim/init.lua<CR>', { noremap = true })

vim.cmd('cnoreabbrev H vert h')
-- cnoreabbrev H vert h

-- Neoterm mappings
-- todo: Take into account the active split window
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-h>', ':vert resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':vert resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':resize -1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':resize +1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', ':Ttoggle<CR>', { noremap = true })

-- NEOTERM MAPPINGS
-- Expected behaviour:
-- When on a file, open a terminal with id LAST+1
-- and remember this id for this file for further use
-- If on file:
-- For compilation, don't move cursor to terminal,
-- but, the last line should be diplayed when compilation is done
-- For execution, move the cursor to terminal last
-- If on terminal:
-- For compilation, compile the file and cursor remains on terminal
-- and the cursor moves to the last line
-- For execution, move the cursor to terminal last
--
-- C++20 Compile and Execute
vim.api.nvim_command([[
autocmd filetype cpp nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> Topen <bar> T g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors <CR><C-w><C-w>G' : ':w <bar> Topen <bar> T g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors <CR><C-w><C-w>G<C-w><C-w>'
]])
vim.api.nvim_command([[
autocmd filetype cpp nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:Topen <bar> T ./%:r<CR><C-w><C-w>G' : ':Topen <bar> T ./%:r<CR><C-w><C-w>G'
]])
-- JAVA Compile and Execute
vim.api.nvim_command([[
autocmd filetype java nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> Topen <bar> T javac %<CR><C-w><C-w>G':':w <bar> Topen <bar> T javac %<CR><C-w><C-w>G<C-w><C-w>'
]])
vim.api.nvim_command([[
autocmd filetype java nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:Topen <bar> T java %:r<CR><C-w><C-w>G':':Topen <bar> T java %:r<CR><C-w><C-w>G'
]])


-- Session Management
vim.api.nvim_set_keymap('n', '<Leader>ss', ':source $HOME/.config/nvim/session/', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>sv', ':mksession! $HOME/.config/nvim/session/', { noremap = true })
-- To save session with updated vimrc settings
-- Try ':set sessionoptions-=options', reload your session
-- then restore it with ':set sessionoptions+=options'.
-- Hack for removing a file from buffer completely
-- This is because when session is rewritten, file
-- isn't removed from the session [Only for vim maybe]
-- cnoreabbrev bd bd <bar> argd*
