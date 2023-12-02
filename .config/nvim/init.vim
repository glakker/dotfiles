set title
set number
"set relativenumber
"set colorcolumn=80

"colorscheme gruvbox
"colorscheme habamax 
"colorscheme janah 


set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
"set expandtab

highlight Normal ctermbg=none
highlight LineNr ctermfg=239 ctermbg=none
set cursorline
highlight CursorLineNr cterm=None ctermbg=235 ctermfg=white
highlight CursorLine cterm=None ctermbg=235 ctermfg=None  
" for default colorscheme
highlight Comment ctermfg=grey

set mouse=a

"##############################################################
" keybindings 
"##############################################################
let mapleader='í'
" change buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>j :bnext<cr>
map <leader>k :bprevious<cr>
map <leader>d :bdelete<cr>


"##############################################################
"vim-plug installálva: PlugInstall és PlugClean parancsok
"##############################################################
call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mhinz/vim-startify'
	Plug 'junegunn/fzf.vim'
	Plug 'vifm/vifm.vim'
call plug#end()

" bubblegum, understated, zenburn, badwolf
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts = 1

"##############################################################
" vim startify
" Wow 08 larry3d Thin Lean Cybersmall

"let g:startify_custom_header =
"       \ startify#pad(split(system('figlet -f cybersmall zizizneovim'), '\n'))

"let g:startify_custom_header = [ 
"			\ ' __ _ ____ ____ _  _ _ _  _',
"			\ ' | \| |=== [__]  \/  | |\/|',
"			\ '											 ',
"			\]
highlight StartifyHeader  ctermfg=250

let g:startify_custom_header = [ 
			\ '_____________________   ____(_)______ ___ ',
			\ '__  __ \  _ \  __ \_ | / /_  /__  __ `__ \',
			\ '_  / / /  __/ /_/ /_ |/ /_  / _  / / / / /',
			\ '/_/ /_/\___/\____/_____/ /_/  /_/ /_/ /_/ ',
			\ '											 ',
			\]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

let g:startify_bookmarks = [
  \ { 'b': '~/.bashrc' },
  \ { 'a': '~/.config/alacritty/alacritty.yml' },
  \ { 'k': '~/.config/kitty/kitty.conf' },
  \ { 'n': '~/.config/nvim/init.vim' },
  \ { 'h': '~/.config/hypr/hyprland.conf' },
  \ { 'i': '~/.config/i3/config' },
  \ { 'x': '~/.xinitrc' },
  \ ]

let g:startify_commands = [
        \ {'z': 'FZF'},
        \ {'f': 'Explore'},
        \ {'v': 'Vifm'},
        \ ]

nmap <c-n> :Startify<cr>
"##############################################################
