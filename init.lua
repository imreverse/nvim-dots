-------------------------------------------------------
--  ███╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
--  ████╗  ██║██║   ██║██║████╗ ████║██╔══██╗██╔════╝
--  ██╔██╗ ██║██║   ██║██║██╔████╔██║██████╔╝██║
--  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
--  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
--  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
-------------------------------------------------------
-- TODO: {PROBLEMOS}
-- * unable to recompile c++ when java file is opened
--      (Commented java compilation for now)
-- * nerdtree doesn't refresh folder structure wrt file
-- * vimcommentary c++ unable to set an autocmd in lua

-- TODO: {FEATURE-RQSTS}
-- * Try nvim 0.5 plugins
--      (telescope, fugitive, treesitter)
-- * Bracket matching line, in code, in tree
-- * Customize Galaxyline to your liking
-- * Try to port molokai theme in lua
-- * Highlight current searched text in different color?
-- * Change neoterm font size? Maybe smaller
-- * Code folding inside a particular scope??
-- * vimcommentry change keybind to alt+/
-- * Change current highlighted search word in orange?
-- * Change the escape behaviour to move back to prev line
-- * For god's sake, map shift+J to nothing, it's annoying
-- * Find why nvim first insertion after boot is so slow
-- * When in terminal in terminal mode, switch using alt+t
-- * Don't have a tab for neoterm on bufferline?

-- Plug Plugin Manager [plg] --------------------------
require('plugins')

-- Color Schemes [clr] --------------------------------
local execute = vim.api.nvim_command
execute([[
colorscheme molokai
highlight Comment cterm=italic gui=italic
]])

-- Key Mappings [key] ---------------------------------
require('keymaps')

-- Set VIM Variables [var] ----------------------------
require('options')
