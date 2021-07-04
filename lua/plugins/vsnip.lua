vim.g.vsnip_snippet_dir = os.getenv("HOME").."/.config/nvim/snippets"

-- NOTE: You can use other key to expand snippet.

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end


-- Expand
function _g.smart_tab()
    return vim.fn['vsnip#expandable()'] == 1 and t'<Plug>(vsnip-expand)' or t'<C-j>'
end

vim.api.nvim_set_keymap('i', '<C-j>', 'v:lua.smart_tab()', {expr = true, noremap = true})
vim.api.nvim_set_keymap('s', '<C-j>', 'v:lua.smart_tab()', {expr = true, noremap = true})

-- imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
-- smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'


-- -- Expand or jump
-- function _g.avail()
--     return vim.fn.vsnip#available(1) == 1 and t'<Plug>(vsnip-expand-or-jump)' or t'<C-l>'
-- end

-- vim.api.nvim_set_keymap('i', '<C-l>', 'v:lua.avail()', {expr = true, noremap = true})
-- vim.api.nvim_set_keymap('s', '<C-l>', 'v:lua.avail()', {expr = true, noremap = true})

-- -- imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
-- -- smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'



-- " Jump forward or backward
-- imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
-- smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

-- " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- " See https://github.com/hrsh7th/vim-vsnip/pull/50
-- nmap        s   <Plug>(vsnip-select-text)
-- xmap        s   <Plug>(vsnip-select-text)
-- nmap        S   <Plug>(vsnip-cut-text)
-- xmap        S   <Plug>(vsnip-cut-text)

-- " If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
-- let g:vsnip_filetypes = {}
-- let g:vsnip_filetypes.javascriptreact = ['javascript']
-- let g:vsnip_filetypes.typescriptreact = ['typescript']
