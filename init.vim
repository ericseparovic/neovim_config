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
source ~/.config/nvim/nvim-plugins/plugins.vim

"Config Plugins
source ~/.config/nvim/plug-config/onedark.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/nerdtree.vim
source ~/.config/nvim/plug-config/indentLine.vim
source ~/.config/nvim/plug-config/vim-closetag.vim


"Config keys
source ~/.config/nvim/keymapping/keys.vim

""""ATAJOS EN MODO NORMAL""""

"<Leader> + s: Se ejecuta el plug easymotion
nmap <Leader>s <Plug>(easymotion-s2)


nnoremap <silent> <C-d> :Format<cr>
nnoremap <silent> <C-left> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-right> :TmuxNavigateRight<cr>
nnoremap <silent> <C-f>:TmuxNavigatePrevious<cr>

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
nnoremap <silent><Leader>n :RangerOpenCurrentFile<CR>
nnoremap <silent><Leader>c :RangerOpenCurrentDir<CR>
nnoremap <silent><Leader>f :RangerOpenProjectRootDir<CR>

" For scss files, you may need use:
autocmd FileType scss setl iskeyword+=@-@




