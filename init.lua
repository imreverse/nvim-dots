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
-- * When nvimtree is open and i close buffer, nvimtree
--      takes over and does not properly close the buffer
--      (isn't a problem of plugin, but of vim behaviour)

-- TODO: {FEATURE-RQSTS}
-- * Try nvim lsp
-- * Command-click similar for vim?
-- * Nvim Telescope search for only files with exact name
-- * Nvim Telescope remember search history and maintain order
-- * Nvim Telescope ignore .git folder, but dont ignore git files
-- * MEDIUM PRIORITY
-- * Try to port molokai theme in lua
-- * LOW PRIORITY
-- * Bracket matching line, in code, in tree (highlt grp)
-- * Customize Galaxyline to your liking
--      Modify color such that 2nd element has a tint
--      of previous element's color, Add line number
--      Modify the color of right elements too
-- * Code folding inside a particular scope (workaround)
-- * Add a U mapping to undo till last save, similar for ^R
-- * If there is a plugin error, try to install it instead
--      just throwing the error <Add try catch in plugins>
-- * NvimTree keymap to collapse all the directories
-- * Add mapping to press tab and shiftab in visual mode


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

-- Plug Plugin Manager [plg] --------------------------
require('plugins')
