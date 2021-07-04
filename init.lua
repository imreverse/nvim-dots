-------------------------------------------------------
--  ███╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
--  ████╗  ██║██║   ██║██║████╗ ████║██╔══██╗██╔════╝
--  ██╔██╗ ██║██║   ██║██║██╔████╔██║██████╔╝██║
--  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
--  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
--  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
-------------------------------------------------------
-- TODO:
-- 1. Customize Galaxyline to your liking
-- 2. Try a port of molokai theme to lua
-- 3. Make use of NVIM 0.5 Features
-- 4. Telescope, Fugitive, Treesitter, Plug
-- 5. When opening new file, change working directory
-- 6. Nvim-Tree does not completely closes
-- 7. Barbar other buffer color change
-- C. Nope, barbar is sorting like shit, look intoit
-- 9. Bracket matching line, in code, in tree

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
