" in ~/.vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'preservim/nerdtree'
  Plugin 'morhetz/gruvbox'
  Plugin 'ycm-core/YouCompleteMe' 
call vundle#end()

"""""""""""""""""""""""FileBrowser""""""""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

""""""""""""""""zheme"""""""""""""""
colorscheme gruvbox
set background=dark
set t_Co=256
syntax on
set hlsearch
"""""""""""""""""""""""""YCM"""""""""""""""""""""""""
" 如果不打开syntax（语法高亮）YCM无法工作
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.c = ['->', '.', '(', '[', '&']
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=3
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_server_python_interptreter='/usr/lib/python3.12'
" YouCompleteMe 功能  
" 补全功能在注释中同样有效  
let g:ycm_complete_in_comments=0
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示  
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎  
let g:ycm_collect_identifiers_from_tags_files=1  
" 补全内容不以分割子窗口形式出现，只显示补全列表  
set completeopt-=preview  
" 从第一个键入字符就开始罗列匹配项  
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项  
let g:ycm_cache_omnifunc=0  
" 语法关键字补全              
let g:ycm_seed_identifiers_with_syntax=1  
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;  
let g:ycm_key_invoke_completion = '<M-;>'  
" 设置转到定义处的快捷键为ALT + G，这个功能非常赞  
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>  
" 设置按哪个键上屏
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

"""""""""""""""""""""""F5-RunFile"""""""""""""""""""
map <F5> :call Runfile()<CR>
func! Runfile()
    exec "term python3 %"
endfunc
