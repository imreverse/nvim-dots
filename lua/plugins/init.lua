-- Bootstrap
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

require('plugins.nvim-tree')
require('plugins.bufferline')
require('plugins.undotree')
require('plugins.ultisnips')
require('plugins.startify')
require('plugins.vim-commentary')
require('plugins.neoterm')
-- require('plugins.vsnip')
require('plugins.glx')

-- Plugins
return require('packer').startup(function()
    -- packer
    use 'wbthomason/packer.nvim'

    -- use "siduck76/nvim-base16.lua"

    -- neovim-tree file explorer
    use
    {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- bufferline tabs
    use
    {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- galaxyline statusbar
    use
    {
        'glepnir/galaxyline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- neoterm terminal wrapper
    use 'kassio/neoterm'

    -- undotree
    use 'mbbill/undotree'

    -- commentary comment toggle
    use 'tpope/vim-commentary'

    -- use 'hrsh7th/vim-vsnip'

    use 'SirVer/ultisnips'

    use 'mhinz/vim-startify'

    -- -- GalaxyLine
    -- use
    -- {
    --     'glepnir/galaxyline.nvim',
    --     -- branch = 'main',
    --     -- -- your statusline
    --     -- config = function() require'my_statusline' end,
    --     -- -- some optional icons
    --     -- requires = {'kyazdani42/nvim-web-devicons', opt = true}
    -- }

end)
