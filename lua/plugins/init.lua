-- Bootstrap
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

require('plugins.startify')
require('plugins.bufferline')
require('plugins.galaxyline')
-- require('plugins.nvim-tree')
require('plugins.nvim-treesitter')
require('plugins.neoterm')
require('plugins.undotree')
require('plugins.ultisnips')
require('plugins.vim-commentary')

-- Plugins
return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Startify
    use 'mhinz/vim-startify'
    -- Dashboard
    -- use 'glepnir/dashboard-nvim'
--  [[      Startify already configured
--          Startify has option to view sessions
--          Dashboard is nice for center view
--          Dashboard not customized yet, want sessions view
--  ]]

    -- Bufferline
    use 'akinsho/nvim-bufferline.lua'
    -- Barbar
    -- use 'romgrk/barbar.nvim'
--  [[      Bufferline has nice colorscheme
--          Bufferline ability to offset for nvimtree (unable achieve same for nerdtree)
--          Barbar colorscheme not nice (hard to achieve same results)
--          Barbar not able to offset properly (some gap is left, plus difficult)
--          Barbar buffer ordering is messed up
--          Barbar animations are awesome
--  ]]

    -- Galaxyline
    use 'glepnir/galaxyline.nvim'
    -- Lualine
    -- use 'hoob3rt/lualine.nvim'
    -- Vim Airline
    -- use 'vim-airline/vim-airline'
--  [[      Haven't looked into this yet
--  ]]

    -- NERDtree
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    -- NvimTree
    -- use 'kyazdani42/nvim-tree.lua'
--  [[      NerdTree no bugs
--          NerdTree uses complementary icon set and not good as nvimtree's icons
--          NerdTree no github sign (extra plugin)
--          NerdTree does not refresh folder structure acc to current file :(
--          NerdTree written in vimscript
--          NvimTree blank when opening from startify session
--          NvimTree doesn't close properly when new file is opened
--          NvimTree written in lua tho
--  ]]

    -- Icons for NERDtree
    use 'ryanoasis/vim-devicons'
    -- Icons for galaxyline, bufferline
    use 'kyazdani42/nvim-web-devicons'

    -- Neovim Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- NeoTerm terminal wrapper
    use 'kassio/neoterm'

    -- UndoTree
    use 'mbbill/undotree'

    -- UltiSnips easy, but in python
    use 'SirVer/ultisnips'
    -- Vsnip lsp support, hard to customize in lua
    -- use 'hrsh7th/vim-vsnip'
--  [[      UltiSnips super easy, plus already configured
--          UltiSnips in python tho
--          Vsnip haven't configured, but super difficult
--          Vsnip has LSP support, vimscript, etc
--  ]]

    -- Comment Toggle
    use 'tpope/vim-commentary'
end)
