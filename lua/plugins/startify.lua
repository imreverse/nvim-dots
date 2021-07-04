vim.g.startify_files_number = 7
vim.g.startify_session_dir  = os.getenv("HOME").."/.config/nvim/session"
vim.g.startify_lists = {
      { type = 'bookmarks', header = {'   Bookmarks'}      },
      { type = 'sessions',  header = {'   Sessions'}       },
      { type = 'files',     header = {'   MRU'}            },
      { type = 'commands',  header = {'   Commands'}       },
      }
-- " let g:startify_custom_header =
-- "         \ startify#pad(split(system('fortune | cowsay'), '\n'))
vim.g.ascii = {
            '                                         _.oo.',
            '                 _.u[[/;:,.         .odMMMMMM.',
            '              .o888UU[[[/;:-.  .o@P^    MMM^  ',
            '             oN88888UU[[[/;::-.        dP^    ',
            '            dNMMNN888UU[[[/;:--.   .o@P^      ',
            '           ,MMMMMMN888UU[[/;::-. o@^          ',
            '           NNMMMNN888UU[[[/~.o@P^             ',
            '           888888888UU[[[/o@^-..              ',
            '          oI8888UU[[[/o@P^:--..               ',
            '       .@^  YUU[[[/o@^;::---..                ',
            '     oMP     ^/o@P^;:::---..                  ',
            '  .dMMM    .o@^ ^;::---...                    ',
            ' dMMMMMMM@^`       `^^^^                      ',
            'YMMMUP^                                       ',
            ' ^^                                           ',
      }
vim.g.startify_custom_header = vim.g.ascii
-- " let g:startify_custom_header = g:ascii + startify#fortune#boxed()
-- " let g:startify_custom_header =
-- "       \ 'startify#center(g:ascii + startify#fortune#boxed())'

