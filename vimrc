set nocompatible              " be iMproved, required


syntax enable

set backspace=indent,eol,start
let mapleader = ','         "change default leader key to comma 
set number
set linespace=5			"Macvim line heigh
"set macligatures            " pretty simbols
"set guioptions-=e
"remove the sidebar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"no error sound
set noerrorbells visualbell t_vb=

"-----------Visuals-----------"
colorscheme atom-dark
"set guifont=Fira_Code:h14
" color of numbers
:nmap <C-N><C-N> :set invnumber<CR>
:set numberwidth=5
":set relativenumber


"set space on the left
hi LineNr guibg=bg
set foldcolumn=0

hi foldcolumn guibg=bg
"remove border on the left
hi vertsplit guifg=bg guibg=bg
"hi horizontal guifg=bg guibg=bg


"-----------Search-----------"
set hlsearch
set incsearch

"-----------Split Management-----------"
set splitbelow
set splitright

" tabelle e schede
nmap <C-Tab> gt
nmap <C-S-Tab> gT
"cambia scheda
nmap  <C-W><C-W>

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-l>	

"nmap <C-C> :tabclose <cr>
"nmap <D-> :sp<cr>
"nmap <C-B> :vertical resize +5<cr>
"nmap <C-M> :vertical resize -5<cr>
nmap √ :vsp<cr>
nmap ˙ :sp<cr>
nmap ∑ :vertical resize +4<cr>
nmap Ω :vertical resize -4<cr>
nmap © :2winc +<cr>
nmap µ :2winc -<cr>

"-----------Mapping-----------"
nmap <Leader>f :tag<space>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"nmap <Leader>ep :e ~/.vim/plugins.vim<cr>
nmap <Leader>es :e ~/.vim/snippets/php.snippets<cr>
"nmap <Leader>pl :tabedit ~/.vim/plugins.vim<cr>
nmap <C-S> :w<cr>
nmap <D-S> :w<cr>
"remove highlighted text
nmap <Leader><space> :nohlsearch<cr>

"-----------Plugins-----------"

"nerdtree
nmap <D-1> :NERDTreeToggle<cr>
let NERDTreeHijackNetrw = 0

"ctrlP
nmap <C-P> :CtrlP<cr>
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-E> :CtrlPMRUFiles<cr>
nmap <leader>cc :ClearAllCtrlPCaches<cr>

"let g:ctrlp_custom_ignore = 'node_modules\Vendor\DS_Store\|git'
let g:ctrlp_custom_ignore = { 'dir': 'vendor\|git\build$\|node_modules$' }
let g:ctrlp_use_caching = 0

"Greplace    use Ag for the search and replace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"Tlist
nmap <C-R> :TlistOpen<cr>
let Tlist_Show_One_File=1
let Tlist_Close_On_Select=1
let Tlist_Inc_Winwidth=0
let Tlist_Show_Menu=1
let Tlist_Highlight_Tag=0
let Highlight_Tag=1
let Tlist_Compact_Format=1
let Tlist_Use_Right_Window=1
let tlist_php_settings = 'php;php:class;f:function'

"easymotion
" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-fe)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)

" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)

"-----------Laravel-Specific--------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
" find files into specific directories
nmap <Leader><Leader>c :CtrlP<cr>app/Http/Controllers/
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :CtrlP<cr>resources/views
nmap <Leader><Leader>p :CtrlP<cr>


"----------------------Plugins-------------------
"so ~/.vim/plugins.vim

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'msanders/snipmate.vim'

call vundle#end()            " required
filetype plugin indent on    " required
"-----------------------------------------


"-----------Auto-Commands--------"
augroup autosourching
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

