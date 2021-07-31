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
-- * Find why nvim first insertion after boot is so slow
-- * When nvimtree is open and i close buffer, nvimtree
--      takes over and does not properly close the buffer

-- TODO: {FEATURE-RQSTS}
-- * Try nvim 0.5 plugins
--      (telescope, fugitive, lsp)
-- * Code folding inside a particular scope??
-- * Change current highlighted search word in orange?
-- * MEDIUM PRIORITY
-- * Change and configure toggleterm
-- * Change neoterm font size? Maybe smaller
-- * Try to port molokai theme in lua
-- * Change the escape behaviour to move back to prev line
-- * LOW PRIORITY
-- * When in terminal in terminal mode, switch using alt+t
-- * Bracket matching line, in code, in tree (highlt grp)
-- * Customize Galaxyline to your liking


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
