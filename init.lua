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
-- * LOW PRIORITY
-- * Code folding inside a particular scope (workaround)
-- * If there is a plugin error, try to install it instead
--      just throwing the error <Add try catch in plugins>
-- * NvimTree keymap to collapse all the directories
-- * Jump back in history using alt+[ and fwd alt+]
-- * Keep search query for diff buffer separate


-- Key Mappings [key] ---------------------------------
require('keymaps')

-- Set VIM Variables [var] ----------------------------
require('options')

-- Plug Plugin Manager [plg] --------------------------
require('plugins')

-- Color Schemes [clr] --------------------------------
local execute = vim.api.nvim_command

-- Moluakai
-- execute([[
-- colorscheme moluakai
-- highlight Comment cterm=italic gui=italic
-- ]])

-- TokyoNight
-- vim.g.tokyonight_style = "day"
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_transparent = true
execute[[colorscheme tokyonight]]
