vim.cmd [[
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'FilenameForLightline'
      \ },
      \ }

" Show full path of filename
function! FilenameForLightline()
    return fnamemodify(expand("%"), ":~:.")
endfunction
]]
