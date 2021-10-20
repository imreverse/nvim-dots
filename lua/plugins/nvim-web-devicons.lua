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
    yellow    = '#eaed2f',
    white     = '#ffffff',
}
require'nvim-web-devicons'.set_default_icon('', colors.lblue)
require'nvim-web-devicons'.setup
{
    override =
    {
        md =
        {
            icon = "",
            color = colors.white,
            name = "md",
        },
        c = {
         icon = "",
         color = colors.blue,
         name = "c",
        },
        cpp = {
         icon = "ﭱ",
         color = colors.blue,
         name = "cpp",
        },
        css = {
         icon = "",
         color = colors.blue,
         name = "css",
        },
        deb = {
         icon = "",
         color = colors.red,
         name = "deb",
        },
        Dockerfile = {
         icon = "",
         color = colors.blue,
         name = "Dockerfile",
        },
        h =
        {
            icon = "ﭱ",
            color = colors.blue,
            name = "h",
        },
        hpp =
        {
            icon = "ﭱ",
            color = colors.blue,
            name = "hpp",
        },
        html = {
         icon = "",
         color = colors.red,
         name = "html",
        },
        class =
        {
            icon = "",
            color = colors.red,
            name = "class",
        },
        jpeg = {
         icon = "",
         color = colors.purple,
         name = "jpeg",
        },
        jpg = {
         icon = "",
         color = colors.purple,
         name = "jpg",
        },
        js = {
         icon = "",
         color = colors.yellow,
         name = "js",
        },
        kt = {
         icon = "󱈙",
         color = colors.red,
         name = "kt",
        },
        lock = {
         icon = "",
         color = colors.red,
         name = "lock",
        },
        mp3 = {
         icon = "",
         color = colors.green,
         name = "mp3",
        },
        mp4 = {
         icon = "",
         color = colors.green,
         name = "mp4",
        },
        out = {
         icon = "",
         color = colors.white,
         name = "out",
        },
        png = {
         icon = "",
         color = colors.purple,
         name = "png",
        },
        py = {
         icon = "",
         color = colors.blue,
         name = "py",
        },
        ["robots.txt"] = {
         icon = "ﮧ",
         color = colors.red,
         name = "robots",
        },
        toml = {
         icon = "",
         color = colors.blue,
         name = "toml",
        },
        ts = {
         icon = "ﯤ",
         color = colors.blue,
         name = "ts",
        },
        ttf = {
         icon = "",
         color = colors.white,
         name = "TrueTypeFont",
        },
        txt = {
         icon = "",
         color = colors.white,
         name = "txt",
        },
        rb = {
         icon = "",
         color = colors.lred,
         name = "rb",
        },
        rpm = {
         icon = "",
         color = colors.red,
         name = "rpm",
        },
        xz = {
         icon = "",
         color = colors.yellow,
         name = "xz",
        },
        ods =
        {
            icon = "",
            color = colors.green,
            name = "ods",
        },
        xlsx =
        {
            icon = "",
            color = colors.green,
            name = "xlsx",
        },
        zip = {
         icon = "",
         color = colors.yellow,
         name = "zip",
        },
    },
}
