set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab'
Plug 'Chiel92/vim-autoformat'
Plug 'nvie/vim-flake8'
Plug 'Valloric/YouCompleteMe'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" color theme
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox

" vim-autoformat 
au FileType python setlocal formatprg=autopep8\ -
noremap <F3> :Autoformat<CR>
" let g:formatters_python = ['autopep8']
set complete-=i
set number

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

