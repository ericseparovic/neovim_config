syntax on
set mouse=a   	"Allows you to interact with the mouse
set noerrorbells 	        "Disable error sounds
set sw=4         	        "Resize tabs (makes them smaller)
set expandtab    	        "Tabs are spaces
set smartindent  	        "Enable indentation
set number 	 	        "Enable numbering
set rnu                         "Enable relative numbers 
set numberwidth=1              "Modify space between the numbering and the window
set nowrap                      "Allows text to be written linearly if it leaves the window
set noswapfile          
set incsearch           
set ignorecase                  "Allows you to perform searches ignoring capital letters
set clipboard=unnamedplus       
set encoding=utf-8
set cursorline 
set colorcolumn=120
set termguicolors
set showcmd
set showmatch
set noshowmode


call plug#begin('~/.config/nvim/plugged')
"Themes
Plug 'joshdick/onedark.vim'

"Tree
Plug 'scrooloose/nerdtree'

"Tmux
Plug 'christoomey/vim-tmux-navigator'

"Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"Search go
Plug 'easymotion/vim-easymotion'

"icons
Plug 'ryanoasis/vim-devicons'

"Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Multiwindows
Plug 'christoomey/vim-tmux-navigator'

"vim coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

"Commeneter
Plug 'scrooloose/nerdcommenter'

"Repet last command
Plug 'tpope/vim-repeat'

"search inside files 
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

"Configuration THEME
colorscheme onedark

"Shortcut configuration
let mapleader=" "
"open search engine     
nmap <Leader>s <Plug>(easymotion-s2)
"open tree
nmap <Leader>t :NERDTreeFind<CR>

"Copy path of files

"Ctrl + d formatFile with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <C-D> :Prettier<CR>
"Configuration key jj as Esc 
imap <Leader>j <Esc>
imap <Leader>J <Esc>

"Disable arrowns in normal mode
noremap <up> <nop> 
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"Tmux navegator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

"Search file`
map <Leader>p :Files<CR>
"Search inside of files
map <Leader>ag :Ag<CR>

"Space  + w  save and spacee + q salir
nnoremap <C-s> w :w<CR> 
nnoremap <Leader> q :q<CR> 

"Resize space + < >
"nnoremap <Leader> . 10 <C-w>
"nnoremap <Leader> , 10 <C-w>
"GoTo code navegation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent><Leader>n :RangerOpenCurrentFile<CR>
nnoremap <silent><Leader>c :RangerOpenCurrentDir<CR>
nnoremap <silent><Leader>f :RangerOpenProjectRootDir<CR>

      

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
