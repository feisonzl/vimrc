"hi Comment ctermfg =green
"hi String ctermfg =darkred
"hi Type ctermfg =yellow
"hi Statement ctermfg =darkyellow
colorscheme desert

set ts=4

"空格替换为TAB
set noexpandtab

"只处理行首TAB键
:%retab

set nu
filetype on
set background=dark
"语法高亮
syntax enable
syntax on

"对齐
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4

"设置匹配模式
set showmatch

"智能查找
set incsearch

"display input command
set showcmd
"syntastic
let g:syntastic_c_include_dirs=['/usr/src/kernels/2.6.27.41-170.2.117.fc10.i    686/include/','/home/feison/work/study/drivers/']

au FileType c setlocal dict+=~/.vim/dict/c,dict

"ctags
set tags=/root/feison_work/study/examples/scull/tags


"taglist.vim
let Tlist_Ctags_Cmd= "/usr/local/bin/ctags"
"let Tlist_Show_One_File = 1
let Tlist_Sort_Type= "name"
"let Tlist_Use_Right_Window = 1
"let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1
"智能补全
filetype plugin indent on
set completeopt=longest,menu
"智能补全增强 supertab.vmb
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"a.vim c/h 切换
nnoremap <silent> <F12> :A<CR>

"winManager.vim
set nocompatible "避免vi和vim的冲突
"let loaded_winmanager = 1   "关闭wm功能
let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<cr>
"let g:AutoOpenWinManager = 1 "自动打开wm功能
"自动打开wm
autocmd VimEnter * nested execute  ":WMToggle"

"cscope
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"minibufexpl
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
