require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})
vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("n", "<A-/>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("i", "<A-/>", "<ESC><Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("x", "<A-/>", "<Plug>kommentary_visual_default", {})
