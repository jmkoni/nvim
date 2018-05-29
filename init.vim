call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle."
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rking/ag.vim'
Plug 'elzr/vim-json'
Plug 'derekwyatt/vim-scala'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-lion'
Plug 'freeo/vim-kalisi'
" ctrl-p is a fuzzy file finder.
Plug 'kien/ctrlp.vim'
" airline is a better status line and a tab-bar for nvim.
Plug 'bling/vim-airline'
" gruvbox colorscheme. Seems to work the best for me.
Plug 'morhetz/gruvbox'
" neomake is a code linting tool that runs in the background.
Plug 'neomake/neomake'
" enables project specific configurations
Plug 'editorconfig/editorconfig-vim'
" rust!
Plug 'rust-lang/rust.vim'
call plug#end()

colorscheme molokai
set background=dark

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

set termguicolors

" Autostart NerdTree
" Auto start NERD tree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

map <C-n> :NERDTreeToggle<CR>

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" syntax highlighting
syntax on

" file type recognition
filetype on
filetype plugin on
filetype indent on
