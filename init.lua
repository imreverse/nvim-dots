-------------------------------------------------------
--  ███╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
--  ████╗  ██║██║   ██║██║████╗ ████║██╔══██╗██╔════╝
--  ██╔██╗ ██║██║   ██║██║██╔████╔██║██████╔╝██║
--  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
--  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
--  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
-------------------------------------------------------
-- TODO: {FEATURE-RQSTS}
-- * Try nvim lsp
-- * Nvim Telescope search for only files with exact name
-- * Nvim Telescope remember search history and maintain order
-- * Code folding inside a particular scope (workaround)
-- * Jump back in history using alt+[ and fwd alt+]
-- * Keep search query for diff buffer separate
-- * Try a better terminal management approach


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
