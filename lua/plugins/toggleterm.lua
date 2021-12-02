require'toggleterm'.setup
{
    shade_terminals = true,
    start_in_insert = false
}
-- todo: Take into account the active split window
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-t>', ':ToggleTerm<CR>', { noremap = true })

-- Diff Languages compile and execute
vim.cmd([[
" C++20
autocmd filetype cpp nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> TermExec cmd="g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors"<CR><C-w><C-w>G' : ':w <bar> TermExec cmd="g++ -std=c++20 -o %:r % -fsanitize=address,undefined -Wshadow -Wall -Wfatal-errors"<CR><C-w><C-w>G<C-w><C-w>'
autocmd filetype cpp nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:TermExec cmd="./%:r"<CR><C-w><C-w>a' : ':TermExec cmd="./%:r"<CR><C-w><C-w>a'

" JAVA
autocmd filetype java nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> TermExec cmd="javac %"<CR><C-w><C-w>G' : ':w <bar> TermExec cmd="javac %"<CR><C-w><C-w>G<C-w><C-w>'
autocmd filetype java nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:TermExec cmd="java %:r"<CR><C-w><C-w>a' : ':TermExec cmd="java %:r"<CR><C-w><C-w>a'

" Python
autocmd filetype python nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> TermExec cmd="python3 %"<CR><C-w><C-w>a' : ':w <bar> TermExec cmd="python3 %"<CR><C-w><C-w>a'

" C
autocmd filetype c nnoremap <expr> <Leader>c &buftype ==# 'terminal' ? '<C-w><C-w>:w <bar> TermExec cmd="gcc -o %:r %"<CR><C-w><C-w>G' : ':w <bar> TermExec cmd="gcc -o %:r %"<CR><C-w><C-w>G<C-w><C-w>'
autocmd filetype c nnoremap <expr> <Leader>x &buftype ==# 'terminal' ? '<C-w><C-w>:TermExec cmd="./%:r"<CR><C-w><C-w>a' : ':TermExec cmd="./%:r"<CR><C-w><C-w>a'
]])
