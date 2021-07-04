require'nvim-treesitter.configs'.setup
{
    highlight =
    {
        enable = true,
        disable = {},
    },
    indent =
    {
        enable = false,
        disable = {},
    },
    ensure_installed =
    {
        "bash",
        "c",
        "cpp",
        "cmake",
        "fish",
        "html",
        "java",
        "javascript",
        "json",
        "kotlin",
        "latex",
        "lua",
        "python",
        "regex",
        "yaml"
    },
}
