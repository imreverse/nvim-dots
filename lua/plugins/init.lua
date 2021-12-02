-- Bootstrap
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

-- Plugins
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'                        -- Plugin manager
    use 'folke/tokyonight.nvim'                         -- Colorscheme
    use
    {
        'kyazdani42/nvim-web-devicons',
        config = require('plugins.nvim-web-devicons')
    }
    use
    {
        'mhinz/vim-startify',                           -- Dashboard
        config = require('plugins.startify')
    }
    -- use 'glepnir/dashboard-nvim'
    use
    {
        'nvim-lualine/lualine.nvim',                    -- Statusline
        config = require('plugins.lualine')
    }
    -- Bufferline no animations
    -- Barbar colorscheme bad
    -- Barbar offset bad
    -- Barbar buffer ordering messed up
    use
    {
        'akinsho/nvim-bufferline.lua',                  -- Bufferline
        config = require('plugins.bufferline')
    }
    -- use 'romgrk/barbar.nvim'
    use
    {
        'nvim-treesitter/nvim-treesitter',              -- Treesitter
        config = require('plugins.nvim-treesitter')
    }
    -- use 'neovim/nvim-lspconfig'                      -- LSP
    use
    {
        'lukas-reineke/indent-blankline.nvim',          -- Indent lines
        config = require('plugins.indent-blankline')
    }
    use
    {
        'kyazdani42/nvim-tree.lua',                     -- Filetree explorer
        config = require('plugins.nvim-tree')
    }
    use
    {
        'nvim-telescope/telescope.nvim',                -- Fuzzy searcher
        requires = {{'nvim-lua/plenary.nvim'}},
        config = require('plugins.telescope')
    }
    use 'airblade/vim-current-search-match'             -- Highlight current search term
    use 'google/vim-searchindex'                        -- Search with count 99+
    use
    {
        "akinsho/nvim-toggleterm.lua",                  -- Terminal
        config = require('plugins.toggleterm')
    }
    use
    {
        'mbbill/undotree',                              -- Undo history
        config = require('plugins.undotree')
    }
    use
    {
        'L3MON4D3/LuaSnip',                             -- Snippet manager
        config = require('plugins.luasnip')
    }
    use
    {
        'b3nj5m1n/kommentary',                          -- Comments handler
        config = require('plugins.kommentary')
    }
    use
    {
        'tpope/vim-fugitive',                           -- Git tools
        config = require('plugins.vim-fugitive')
    }
    use
    {
        'lewis6991/gitsigns.nvim',                      -- Git line changes
        requires = {{'nvim-lua/plenary.nvim'}},
        config = require('plugins.gitsigns')
    }
end)
