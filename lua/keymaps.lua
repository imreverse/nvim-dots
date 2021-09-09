-- PLUGIN MAPPINGS
vim.cmd('cnoreabbrev PC PackerClean')
vim.cmd('cnoreabbrev PI PackerInstall')
vim.cmd('cnoreabbrev PS PackerSync')

-- Bufferline
-- Goto buffer in position...
vim.api.nvim_set_keymap('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-9>', ':BufferLast<CR>',   { noremap = true, silent = true })
-- Quickly move to a buffer with hotkey
vim.api.nvim_set_keymap('n', '<Leader>b', ':BufferLinePick<CR>', { noremap = true, silent = true })
-- Move b/w buffers
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true })
-- Shift buffers
vim.api.nvim_set_keymap('n', '<A-S-h>', ':BufferLineMovePrev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-S-l>', ':BufferLineMoveNext<CR>', { noremap = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', ':lua require"telescope.builtin".live_grep({ hidden = true })<CR>', { noremap = true, silent = true })

-- Nvim-Tree
-- -- Change call method in order to shift barbar bufferline accordingly
-- require('plugins.tree') -- PROBLEM WITH BUFFERLINE OFFSET
-- vim.api.nvim_set_keymap('n', '<Leader>e', ":lua require'plugins.tree'.toggle_tree()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-e>', ":NERDTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-e>', ":NvimTreeRefresh<CR>:NvimTreeToggle<CR>:NvimTreeToggle<CR>:NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>l', ":NvimTreeFindFile<CR>", { noremap = true})


-- UndoTree
vim.api.nvim_set_keymap('n', '<A-u>', ':UndotreeToggle<CR>', { noremap = true })

-- Vim-Commentary
vim.api.nvim_set_keymap('n', '<A-/>', ':Commentary<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-/>', '<ESC>:Commentary<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-/>', ':Commentary<CR>', { noremap = true })

-- Vim-Signify
vim.api.nvim_set_keymap('n', '<Leader>hd', ':SignifyHunkDiff<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>hu', ':SignifyHunkUndo<CR>', { noremap = true })

-- Vim-Fugitive
vim.api.nvim_set_keymap('n', '<Leader>gs', ':G<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>gh', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>gl', ':diffget //3<CR>', { noremap = true })

-- Neoterm mappings
-- todo: Take into account the active split window
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':vert resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':vert resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':resize -1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':resize +1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-t>', ':Ttoggle<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<A-t>', ':ToggleTerm<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('t', '<A-t>', '<ESC>:Ttoggle<CR>', { noremap = true })
-- C++20 Compile and Execute
vim.api.nvim_command([[
autocmd filetype cpp nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> Topen <bar> T g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors <CR><C-w><C-w>G' : ':w <bar> Topen <bar> T g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors <CR><C-w><C-w>G<C-w><C-w>'
]])
vim.api.nvim_command([[
autocmd filetype cpp nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:Topen <bar> T ./%:r<CR><C-w><C-w>a' : ':Topen <bar> T ./%:r<CR><C-w><C-w>a'
]])
-- -- JAVA Compile and Execute
-- vim.api.nvim_command([[
-- autocmd filetype java nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> Topen <bar> T javac %<CR><C-w><C-w>G':':w <bar> Topen <bar> T javac %<CR><C-w><C-w>G<C-w><C-w>'
-- ]])
-- vim.api.nvim_command([[
-- autocmd filetype java nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:Topen <bar> T java %:r<CR><C-w><C-w>G':':Topen <bar> T java %:r<CR><C-w><C-w>G'
-- ]])


-- SENSIBLE MAPPINGS
-- UnMap Shift+J
vim.api.nvim_set_keymap('n', '<S-j>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-j>', '<NOP>', { noremap = true })
-- This unsets the "last search pattern" register by hitting return
vim.api.nvim_set_keymap('n', '<ESC>', ':noh<CR><CR>k', { noremap = true, silent = true })

-- Don't save change,delete to clipboard
vim.api.nvim_set_keymap('v', 'd', '\"_d', { noremap = true })
vim.api.nvim_set_keymap('n', 'd', '\"_d', { noremap = true })
vim.api.nvim_set_keymap('v', 'c', '\"_c', { noremap = true })
vim.api.nvim_set_keymap('n', 'c', '\"_c', { noremap = true })

-- Select All
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<ESC>ggVG', { noremap = true })

-- Move b/w splits
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', { noremap = true })

-- Change working directory to current file's directory
-- vim.api.nvim_set_keymap('n', '<Leader>da', ':cd %:p:h<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>cd', ':lcd %:p:h | NERDTreeCWD<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>vv', ':e $HOME/.config/nvim/init.lua<CR>', { noremap = true })

vim.cmd('cnoreabbrev H vert h')
-- cnoreabbrev H vert h

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
