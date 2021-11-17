-- Bootstrap
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

require('plugins.nvim-web-devicons')
require('plugins.startify')
require('plugins.bufferline')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.nvim-treesitter')
require('plugins.toggleterm')
require('plugins.undotree')
require('plugins.luasnip')
require('plugins.kommentary')
require('plugins.indent-blankline')
require('plugins.telescope')
require('plugins.gitsigns')
require('plugins.vim-fugitive')

-- Plugins
return require('packer').startup(function()

    use 'folke/tokyonight.nvim'
    use 'wbthomason/packer.nvim'
    use 'airblade/vim-current-search-match'     -- Highlight current search term
    use 'google/vim-searchindex'                -- Search with count 99+
    use 'nvim-treesitter/nvim-treesitter'
    -- use 'neovim/nvim-lspconfig'
    use "akinsho/nvim-toggleterm.lua"
    use 'mbbill/undotree'
    -- use 'SirVer/ultisnips'
    use 'L3MON4D3/LuaSnip'
    use 'b3nj5m1n/kommentary'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'tpope/vim-fugitive'
    use
    {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use
    {
        'lewis6991/gitsigns.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- Startify no center view
    use 'mhinz/vim-startify'
    -- use 'glepnir/dashboard-nvim'

    -- Bufferline no animations
    -- Barbar colorscheme bad
    -- Barbar offset bad
    -- Barbar buffer ordering messed up
    use
    {
        'akinsho/nvim-bufferline.lua',
        requires = {{'kyazdani42/nvim-web-devicons'}}
    }
    -- use 'romgrk/barbar.nvim'

    use
    {
        'nvim-lualine/lualine.nvim',
        requires = {{'kyazdani42/nvim-web-devicons'}}
    }
    -- use 'vim-airline/vim-airline'

    -- NerdTree no indentation lines
    -- NerdTree not able to add buffer space in bufferline
    use 'kyazdani42/nvim-tree.lua'
    -- use
    -- {
    --     'preservim/nerdtree',
    --     requires =
    --     {
    --         {'Xuyuanp/nerdtree-git-plugin'},
    --         {'ryanoasis/vim-devicons'}
    --     }
    -- }
end)
