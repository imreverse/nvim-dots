require'toggleterm'.setup
{
    shade_terminals = true,
    start_in_insert = false
}
-- todo: Take into account the active split window
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-t>', ':ToggleTerm<CR>', { noremap = true })
-- C++20 Compile and Execute
vim.api.nvim_command([[
autocmd filetype cpp nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> TermExec cmd="g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors"<CR><C-w><C-w>G' : ':w <bar> TermExec cmd="g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors"<CR><C-w><C-w>G<C-w><C-w>'
]])
vim.api.nvim_command([[
autocmd filetype cpp nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:TermExec cmd="./%:r"<CR><C-w><C-w>a' : ':TermExec cmd="./%:r"<CR><C-w><C-w>a'
]])
-- -- JAVA Compile and Execute
-- vim.api.nvim_command([[
-- autocmd filetype java nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> Topen <bar> T javac %<CR><C-w><C-w>G':':w <bar> Topen <bar> T javac %<CR><C-w><C-w>G<C-w><C-w>'
-- ]])
-- vim.api.nvim_command([[
-- autocmd filetype java nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:Topen <bar> T java %:r<CR><C-w><C-w>G':':Topen <bar> T java %:r<CR><C-w><C-w>G'
-- ]])
