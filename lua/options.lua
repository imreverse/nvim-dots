local o = vim.opt
local execute = vim.api.nvim_command
o.clipboard:append { "unnamedplus" }            -- Set clipboard global linux
o.guicursor     = ''                            -- Set cursor block default
o.cursorline    = true
-- o.mouse         = 'n'
o.undofile      = true                          -- Undofile exists
o.tabstop       = 4
o.softtabstop   = 4
o.shiftwidth    = 4
o.expandtab     = true
o.autoindent    = true
o.number        = true                          -- Show numberline
-- o.relativenumber= true                          -- Relative line [slow]
o.wrap          = false                         -- No wrapping when size small
o.splitbelow    = true                          -- Open horizontal split view below
o.splitright    = true                          -- Open vertical split view right
o.hidden        = true                          -- Hide buffer when opening new file
o.scrolloff     = 5                             -- Scroll offset
o.termguicolors = true                          -- TermGUIcolor
o.foldmethod    = 'manual'
-- o.foldexpr      = 'nvim_treesitter#foldexpr()'
o.foldtext      = 'getline(v:foldstart).\'...\'.trim(getline(v:foldend))'
o.fillchars     = 'fold: '
o.foldnestmax   = 3
o.foldminlines  = 1
-- o.foldlevelstart= 99
o.ignorecase    = true
o.smartcase     = true
o.inccommand    = 'nosplit'                     -- Live substitution

-- Show gutter for help files
vim.api.nvim_command([[
autocmd FileType help  setlocal number
]])

execute('au BufWritePre * %s/\\s\\+$//e')           -- Remove trailing spaces [may not be safe]
execute('au SwapExists * let v:swapchoice = "o"')   -- If swap exists for a file, open in read-only

-- problemo postponed
-- o.formatoptions = "-=cro"                        -- Disable auto comment on new line
-- o.formatoptions:remove{ "c","r","o" }            -- Disable auto comment on new line

-- o.formatoptions = o.formatoptions:remove('c','')
-- o.formatoptions = o.formatoptions:remove('r','')
-- o.formatoptions = o.formatoptions:remove('o','')
-- o.formatoptions = o.formatoptions - 'r'
-- o.formatoptions = o.formatoptions - 'o'
-- o.fo:remove { "cro", "r", "o" }
-- vim.api.nvim_command([[
-- augroup AutoCompileLatex
-- setlocal fo-=cro
-- augroup END
-- ]])
-- vim.api.nvim_command([[
-- autocmd filetype * set fo-=cro
-- ]])
-- vim.api.nvim_command('autocmd filetype * set fo-=c fo-=r fo-=o') -- disable auto comment insertion
-- vim.api.nvim_command('au filetype * set fo-=cro') -- disable auto comment insertion
-- vim.api.nvim_command('au filetype * o.fo:remove { "c", "r", "o" }') -- disable auto comment insertion
-- -- au filetype * set fo-=c fo-=r fo-=o "disable auto comment insertion
-- TODO find a new home for these autocommands
require('lv-utils').define_augroups({
    _general_settings =
    {
        {
            'TextYankPost', '*',
            'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 200})'
        }, {
            'BufWinEnter', '*',
            'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'
        },
        {
            'BufRead', '*',
            'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'
        }, {
            'BufNewFile', '*',
            'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'
        }, {'VimLeavePre', '*', 'set title set titleold='},
        {'FileType', 'qf', 'set nobuflisted'}
    },
    -- _solidity = {
    --     {'BufWinEnter', '.sol', 'setlocal filetype=solidity'}, {'BufRead', '*.sol', 'setlocal filetype=solidity'},
    --     {'BufNewFile', '*.sol', 'setlocal filetype=solidity'}
    -- },
    -- _gemini = {
    --     {'BufWinEnter', '.gmi', 'setlocal filetype=markdown'}, {'BufRead', '*.gmi', 'setlocal filetype=markdown'},
    --     {'BufNewFile', '*.gmi', 'setlocal filetype=markdown'}
    -- },
    -- _markdown = {
    --     {'FileType', 'markdown', 'setlocal wrap'},
    --     {'FileType', 'markdown', 'setlocal spell'}
    -- },
    -- _buffer_bindings = {
    --     {'FileType', 'floaterm', 'nnoremap <silent> <buffer> q :q<CR>'}
    -- }
})
