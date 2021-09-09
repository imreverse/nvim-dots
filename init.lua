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
-- * vimcommentary c++ unable to set an autocmd in lua
-- * When nvimtree is open and i close buffer, nvimtree
--      takes over and does not properly close the buffer
--      (isn't a problem of plugin, but of vim behaviour)

-- TODO: {FEATURE-RQSTS}
-- * Use a different snippet manager other than ultisnip
--      ( it slows neovim's first insert )
-- * Try nvim 0.5 plugins
--      (lsp)
-- * Code folding inside a particular scope??
-- * Command-click similar for vim?
-- * Change current highlighted search word in orange?
-- * Nvim Telescope search for only files with exact name
-- * Nvim Telescope allow scrollable list (open issue)
-- * Nvim Telescope remember search history and maintain order
-- * MEDIUM PRIORITY
-- * Change and configure toggleterm
-- * Change nvimtree font size? Maybe smallere
-- * Change neoterm font size? Maybe smaller
-- * Try to port molokai theme in lua
-- * Change the escape behaviour to move back to prev line
-- * LOW PRIORITY
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
