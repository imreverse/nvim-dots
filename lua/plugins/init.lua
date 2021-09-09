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
require('plugins.nvim-tree')
require('plugins.nvim-treesitter')
require('plugins.neoterm')
require('plugins.toggleterm')
require('plugins.undotree')
require('plugins.ultisnips')
-- require('plugins.luasnip')
require('plugins.vim-commentary')
require('plugins.indent-blankline')
require('plugins.telescope')

-- Plugins
return require('packer').startup(function()

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Search with count 99+
    use 'google/vim-searchindex'

    --
    -- Startify no center view
    -- Dashboard not customized yet, want sessions view
    --
    -- Startify
    use 'mhinz/vim-startify'
    -- Dashboard
    -- use 'glepnir/dashboard-nvim'


    --
    -- Bufferline no animations
    -- Barbar colorscheme not nice (hard to achieve same results)
    -- Barbar not able to offset properly (some gap is left, plus difficult)
    -- Barbar buffer ordering is messed up
    --
    -- Bufferline
    use 'akinsho/nvim-bufferline.lua'
    -- Barbar
    -- use 'romgrk/barbar.nvim'


    -- Galaxyline
    use 'glepnir/galaxyline.nvim'
    -- Lualine
    -- use 'hoob3rt/lualine.nvim'
    -- Vim Airline
    -- use 'vim-airline/vim-airline'


    --
    -- NerdTree no indentation lines
    -- NerdTree not able to add buffer space in bufferline
    -- NvimTree no command to refresh folder structure acc to current file :(
    --
    -- NERDtree
    -- use 'preservim/nerdtree'
    -- use 'Xuyuanp/nerdtree-git-plugin'
    -- NvimTree
    use 'kyazdani42/nvim-tree.lua'


    -- -- Icons for NERDtree
    -- use 'ryanoasis/vim-devicons'
    -- Icons for galaxyline, bufferline
    use 'kyazdani42/nvim-web-devicons'


    -- Neovim Treesitter
    use 'nvim-treesitter/nvim-treesitter'


    -- NeoTerm terminal wrapper
    use 'kassio/neoterm'

    -- Nvim-ToggleTerm
    use "akinsho/nvim-toggleterm.lua"


    -- UndoTree
    use 'mbbill/undotree'


    --
    -- UltiSnips in python tho
    -- UltiSnips no LSP support
    -- Vsnip haven't configured, but super difficult
    --
    -- UltiSnips
    use 'SirVer/ultisnips'
    -- Vsnip lsp support, hard to customize in lua
    -- use 'hrsh7th/vim-vsnip'
    -- LuaSnip
    -- use 'L3MON4D3/LuaSnip'


    -- Comment Toggle
    use 'tpope/vim-commentary'


    -- -- Indent Blanline
    use 'lukas-reineke/indent-blankline.nvim'

    -- Neovim Telescope
    use
    {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Vim Signify
    use 'mhinz/vim-signify'

    -- Vim Fugitive
    use 'tpope/vim-fugitive'

end)
