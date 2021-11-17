local colors =
{
    black     = '#0f1419',
    blue      = '#36a3d9',
    lblue     = '#94ceeb',
    green     = '#5ee02f',
    lgreen    = '#a9ee90',
    purple    = '#7359b3',
    lpurple   = '#b5a8d7',
    red       = '#eb5426',
    lred      = '#f4a38a',
}

local r3v =
{
    normal =
    {
        a = {fg = colors.black, bg = colors.blue, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lblue},
        c = {fg = colors.lblue, bg = colors.black}
    },
    insert =
    {
        a = {fg = colors.black, bg = colors.green, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lgreen},
        c = {fg = colors.lgreen, bg = colors.black}
    },
    visual =
    {
        a = {fg = colors.black, bg = colors.purple, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lpurple},
        c = {fg = colors.lpurple, bg = colors.black}
    },
    command =
    {
        a = {fg = colors.black, bg = colors.red, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lred},
        c = {fg = colors.lred, bg = colors.black}
    },
    terminal =
    {
        a = {fg = colors.black, bg = colors.green, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lgreen},
        c = {fg = colors.lgreen, bg = colors.black}
    },
    replace =
    {
        a = {fg = colors.black, bg = colors.purple, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lpurple},
        c = {fg = colors.lpurple, bg = colors.black}
    },
    inactive =
    {
        a = {fg = colors.black, bg = colors.blue, gui = 'bold'},
        b = {fg = colors.black, bg = colors.lblue},
        c = {fg = colors.lblue, bg = colors.black}
    }
}

local function getPos()
    local currentLine = tostring(vim.api.nvim_call_function('line',{'.'}))
    local totalLine = tostring(vim.api.nvim_call_function('line',{'$'}))
    local currentCol = tostring(vim.api.nvim_call_function('col',{'.'}))
    local totalCol = tostring(vim.api.nvim_call_function('col',{'$'}))
    return 'Ln ' .. currentLine .. '/' .. totalLine .. ' Col ' .. currentCol
end

local function readOnly()
    if vim.bo.modifiable == false or vim.bo.readonly == true then
        return 'READ ONLY'
    end
    return ''
end

-- Default
-- local leftComSep = '│'
-- local rightComSep ='│'
-- Bubbles
-- local leftSecSep = ''
-- local leftComSep = ''
-- local rightSecSep = ''
-- local rightComSep =''
-- Inclined
local leftSecSep = ''
local leftComSep = '/'
local rightSecSep = ''
local rightComSep ='/'
-- Arrows
-- local leftSecSep = ''
-- local leftComSep = ''
-- local rightSecSep = ''
-- local rightComSep =''

require'lualine'.setup
{
    options =
    {
        icons_enabled = true,
        theme = 'tokyonight',
        section_separators = { left = leftSecSep, right = rightSecSep },
        component_separators = { left = leftComSep, right = rightComSep },
        disabled_filetypes = {}
    },
    sections =
    {
        lualine_a =
        {
            {
                'mode',
                separator = { left = rightSecSep, right = leftSecSep },
                padding = 1
            }
        },
        lualine_b =
        {
            'branch',
            {
                'diff',
                colored = false, -- displays diff status in color if set to true
                -- -- all colors are in format #rrggbb
                -- diff_color =
                -- {
                --     added = colors.black, -- changes diff's added foreground color
                --     modified = colors.black, -- changes diff's modified foreground color
                --     removed = colors.black -- changes diff's removed foreground color
                -- },
                symbols = {added = '+', modified = '~', removed = '-'} -- changes diff symbols
            }
        },
        lualine_c =
        {
            {
                'filename',
                file_status = true,
                path = 1
            }
        },
        lualine_x =
        {
            {readOnly},
            {
                -- 'diagnostics',
                -- -- table of diagnostic sources, available sources:
                -- -- nvim_lsp, coc, ale, vim_lsp
                -- sources = nil,
                -- -- displays diagnostics from defined severity
                -- sections = {'error', 'warn', 'info', 'hint'},
                -- -- all colors are in format #rrggbb
                -- color_error = nil, -- changes diagnostic's error foreground color
                -- color_warn = nil, -- changes diagnostic's warn foreground color
                -- color_info = nil, -- Changes diagnostic's info foreground color
                -- color_hint = nil, -- Changes diagnostic's hint foreground color
                -- symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}
            }
        },
        lualine_y = {{getPos}},
        lualine_z =
        {
            {
                'filetype',
                fmt = string.upper,
                colored = false,
                separator = { left = rightSecSep, right = leftSecSep },
                padding = 1
            }
        }
    },
    inactive_sections =
    {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x =
        {
            {getPos},
            {
                'filetype',
                fmt = string.upper,
                colored = false
            }
        },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = { 'nvim-tree' }
}
