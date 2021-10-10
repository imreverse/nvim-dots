require "bufferline".setup
{
    highlights =
    {
        buffer_selected =
        {
            guifg = normal_fg,
            guibg = normal_bg,
            gui = ""
        },
    },
    options =
    {
        offsets =
        {
            {
                filetype = "NvimTree",
                text = "Explorer",
                highlight = "Directory",
                text_align = "center"
                -- filetype = "NERDTree",
                -- text = "",
                -- padding = 1
            }
        },
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        -- tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
    }
}

-- Goto buffer in position...
vim.api.nvim_set_keymap('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-9>', ':BufferLast<CR>',   { noremap = true, silent = true })
-- Quickly move to a buffer with hotkey
vim.api.nvim_set_keymap('n', '<Leader>b', ':BufferLinePick<CR>', { noremap = true, silent = true })
-- Move b/w buffers
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true })
-- Shift buffers
vim.api.nvim_set_keymap('n', '<A-S-h>', ':BufferLineMovePrev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-S-l>', ':BufferLineMoveNext<CR>', { noremap = true })
