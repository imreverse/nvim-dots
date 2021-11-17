local c =
{
    back    = '#131617',
    orange  = '#ffa914',
    yellow  = '#fff645',
    purple  = '#AE81FF',
    green   = '#51ff00',
    red     = '#FF3F4F',
    turq    = '#2ee282',
    blue    = '#19D1EF',

    black   = '#0f1419',
    white   = '#ffffff',
    lred    = '#f4a38a',
    lblue   = '#94ceeb',
    lgreen  = '#a9ee90',
    lpurple = '#b5a8d7',
}

vim.cmd("hi clear")

-- vertical split lines should look like a line instead of a dashed one
-- set fillchars+=vert:│

local function bg(group, color, ...)
    if select("#",...)~=0 then
        vim.cmd("hi " .. group .. " guibg=" .. color .. " gui=" .. select(1,...))
    else
        vim.cmd("hi " .. group .. " guibg=" .. color)
    end
end

local function fg(group, color, ...)
    if select("#",...)~=0 then
        vim.cmd("hi " .. group .. " guifg=" .. color .. " gui=" .. select(1,...))
    else
        vim.cmd("hi " .. group .. " guifg=" .. color)
    end
end

local function fg_bg(group, fgcol, bgcol, ...)
    if select("#",...)~=0 then
        vim.cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol .. " gui=" .. select(1,...))
    else
        vim.cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
    end
end


fg("Constant",      c.orange,   "bold")
fg("Character",     c.yellow)
fg("String",        c.yellow)
fg("Number",        c.purple)
fg("Boolean",       c.purple)
fg("Float",         c.purple)

fg("Identifier",    c.orange)
fg("Function",      c.green)

fg("Statement",     c.red,      "bold")
fg("Conditional",   c.red,      "bold")
fg("Repeat",        c.red,      "bold")
fg("Label",         c.yellow,   "none")
fg("Operator",      c.red)
fg("Keyword",       c.red,      "bold")
fg("Exception",     c.green,    "bold")

fg("PreProc",       c.turq,     "bold")
fg("Include",       c.turq,     "bold")
fg("Define",        c.blue)
fg("Macro",         c.red,      "italic")
fg("PreCondit",     c.turq,     "bold")

fg("Type",          c.blue,     "italic")
fg("StorageClass",  c.orange,   "italic")
fg("Structure",     c.blue)
fg("Typedef",       c.blue)

fg_bg("Special",    c.blue,     c.back,     "italic")
fg("SpecialChar",   c.orange,      "bold")
fg("Tag",           c.red,      "italic")
fg("Delimiter","#8F8F8F")
fg("SpecialComment","#7E8E91","bold")
fg("Debug","#BCA3A3","bold")

fg("Underlined","#808080","underline")

fg_bg("Ignore","#808080",c.back)

fg_bg("Error",c.yellow,"#1E0010")

fg_bg("Todo","#FFFFFF",c.back,"bold")

bg("DiffAdd", "#13354A")
bg("DiffChange", "#4C4745")
fg_bg("DiffDelete", "#960050", "#1E0010")
bg("DiffText", "#4C4745", "italic,bold")

fg("Directory",c.blue,"bold")

fg_bg("Folded","#465457",c.back)
fg_bg("FoldColumn","#465457","#000000")
fg_bg("MatchParen","#FFFFFF","#3f00fd","bold")

fg_bg("IncSearch","#C4BE89","#000000")
fg_bg("Search","#000000","#FFE792")

fg_bg("Cursor","#000000","#F8F8F0")
fg_bg("iCursor","#000000","#F8F8F0")
bg("CursorLine","#293739")
fg("CursorLineNr",c.orange,"none")
bg("CursorColumn","#293739")
bg("ColorColumn","#232526")

fg_bg("ErrorMsg",c.red,c.back,"bold")
fg_bg("WarningMsg","#FFFFFF","#333333","bold")

fg_bg("LineNr", "#465457", c.back)

fg_bg("VertSplit",c.black,c.back,"bold")

fg_bg("Normal","#F8F8F2",c.back)
fg("Comment","#7E8E91")
fg("NonText","#465457")
fg("SpecialKey","#465457")

-- fg_bg("WildMenu","#FFFFFF","#000000")

bg("Visual","#403D3D")
bg("VisualNOS","#403D3D")

fg("ModeMsg",c.yellow)
fg("MoreMsg",c.yellow)

fg_bg("Pmenu","#FFFFFF","#3d4143")
fg_bg("PmenuSel","#000000","#F0A30A")
bg("PmenuSbar","#242728")
fg("PmenuThumb",c.blue)


-- fg("SpecialKey",c.blue,"italic")
-- fg("Question",c.blue)
fg_bg("SignColumn",c.green,"#232526")
if vim.api.nvim_call_function('has',{'spell'}) then
    fg("SpellBad    guisp=#FF0000","undercurl")
    fg("SpellCap    guisp=#7070F0","undercurl")
    fg("SpellLocal  guisp=#70F0F0","undercurl")
    fg("SpellRare   guisp=#FFFFFF","undercurl")
end
-- fg_bg("StatusLine","#455354","fg")
fg_bg("StatusLineNC","#808080","#080808")
fg("Title","#ef5939")
fg_bg("TabLineFill",c.back,c.back)
fg_bg("TabLine",c.back,"#808080","none")

-- NvimTree
fg("NvimTreeEmptyFolderName", c.blue)
fg("NvimTreeEndOfBuffer", c.black)
-- fg("NvimTreeFolderIcon", folder_bg)
-- fg("NvimTreeFolderName", folder_bg)
fg("NvimTreeGitDirty", c.red)
-- fg("NvimTreeIndentMarker", c.white)
bg("NvimTreeNormal", c.black)
bg("NvimTreeNormalNC", c.black)
fg("NvimTreeOpenedFolderName", c.blue)
fg("NvimTreeRootFolder", c.red .. " gui=underline") -- enable underline for root folder in nvim tree
fg_bg("NvimTreeStatuslineNc", c.black, c.black)
fg("NvimTreeVertSplit", c.black)
bg("NvimTreeVertSplit", c.black)
-- fg_bg("NvimTreeWindowPicker", c.red, black2)

-- " Must be at the end, because of ctermbg=234 bug.
-- " https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
vim.opt.background="dark"
