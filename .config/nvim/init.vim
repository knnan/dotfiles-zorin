call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
" fuzzy finder plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" plugin to set search directory to the closes root of the closest git project
Plug 'https://github.com/airblade/vim-rooter'
" improved incremental search plugin
Plug 'haya14busa/incsearch.vim'
" autocompletion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" language packs plugink
Plug 'sheerun/vim-polyglot'

" quoting/and paranthesis plugin
Plug 'tpope/vim-surround'

" plugin for commengin
Plug 'tpope/vim-commentary'

" Workspace plugin for autosave and persistent undo ans session management
Plug 'thaerkh/vim-workspace'

" colorscheme plugins
Plug 'sainnhe/forest-night'
Plug 'ayu-theme/ayu-vim' 
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
" airline themes plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'chrisbra/sudoedit.vim'
Plug 'kdheepak/keystrokes.nvim'

call plug#end()

" GENERAL SETTINGS
" set leader key
" let g:mapleader = "|"

syntax enable                                   " Enables syntax highlighing
set hidden                                      " Required to keep multiple buffers open multiple buffers
" set nowrap                                      " Display long lines as just one line
set encoding=utf-8                              " The encoding displayed
set guicursor=                                  " makes cursor blink and change color
set ruler              			                " Show the cursor position all the time
set history=1000                                " remember more commands and search history
set undolevels=1000                             " use many muchos levels of undo
set hlsearch
set iskeyword+=-                      	        " treat dash separated words as a word text object"
set mouse=a                                     " Enable your mouse
set smarttab                                    " Makes tabbing smarter will realize you have 2 vs 4
set tabstop=4                                   " number of visual spaces per TAB
set softtabstop=4                               " number of spaces in tab when editing
set shiftwidth=4                                " number of spaces to use for autoindent
set smartindent                                 " Makes indenting smart
set expandtab                                   " Converts tabs to spaces
set autoindent                                  " Good auto indent
set copyindent                                  " Copies indentation from the pervious line
set laststatus=0                                " Always display the status line
set number                                      " Line numbers
set cursorline                                  " Enable highlighting of the current line
set background=dark                             " tell vim what the background color looks like
set showtabline=2                               " Always show tabs
set nobackup                                    " This is recommended by coc
set nowritebackup                               " This is recommended by coc
set updatetime=300                              " Faster completion
set timeoutlen=500                              " By default timeoutlen is 1000 ms
set formatoptions-=cro                          " Stop newline continution of comments
set clipboard=unnamedplus                       " Copy paste between vim and everything else ( sudo apt install xsel )
set wildignore+=*.pyc,*.swp,*.bak,*/class       " Ignore files matching these patterns when opening files based on a glob pattern
set backspace=indent,eol,start                  " Allow backspacing over indention, line breaks and insertion start
set inccommand=split                            " interactive search and replace
set number relativenumber                       " sets Hybrid line number
set smartcase                                   " performs casesensitive search when the search term contains a capital charater otherwise case insensitive search
set noswapfile                                  " Disable swap files.

cmap w!! w !sudo tee

" let g:node_host_prog = expand("~/.nvm/versions/node/v12.18.1/bin/node") " <- example
let g:loaded_matchparen=1


" LOOK and FEEL CONFIGURATION


" enable true colors support
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif







" config for ayu theme
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme

" config for palenight theme

" config for forest_night theme (configuration options should be placed before `colorscheme forest-night`)
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1

" config for material theme
" Themese available for material :  'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
let g:material_theme_style = 'ocean'

"colorscheme base16-material-palenight
"colorscheme forest-night
"colorscheme gruvbox
"colorscheme ayu
"colorscheme OceanicNext
"colorscheme one
colorscheme palenight
colorscheme material


"let g:airline_theme = 'forest_night'
"let g:airline_theme = 'ayu'
"let g:airline_theme = 'OceanicNext'
"let g:airline_theme = 'materiali'
"let g:airline_theme = 'bubblegum'
"let g:airline_theme = 'one"
let g:airline_theme = "palenight"




" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" vim-rooter configs
let g:rooter_change_directory_for_non_project_files = 'home'

" vim-airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '


" :h g:incsearch#auto_nohlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)




" fzf configurations
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" vim-workspace configs

let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_autosave_always = 1


" sfasfd

" Editor keybindingss

" move line up and down
nnoremap <C-S-Up> :m-2<CR>i
inoremap <C-S-Up> <Esc>:m-2<CR>i
nnoremap <C-S-Down> :m+<CR>i
inoremap <C-S-Down> <Esc>:m+<CR>i

" move cursor to beginning or the end of the line
nnoremap <C-S-left> 0i
inoremap <C-S-left> <Esc>0i
nnoremap <C-S-right> $i<right>
inoremap <C-S-right> <Esc>$i<right>

nnoremap <C-L> <S-V>
inoremap <C-L> <Esc><S-V>i
vnoremap <C-L> <down>

" inoremap <Leader><Leader> <Esc>
" vnoremap <Leader><Leader> <Esc>





" delete or duplicate the line
nnoremap <C-K> ddi
inoremap <C-K> <Esc>ddi
nnoremap <C-d> yypi
inoremap <C-d> <Esc>yypi

" Alternate way to save and quit
nnoremap <C-Q> :q<CR>
" Use control-c instead of escape
" nnoremap <C-c> <Esc>
" Alternate way to save
nnoremap <C-s> :w<CR>
" inoremap <C-s> <Esc>:w<CR>i

nnoremap <C-W> :bdelete<CR>

nnoremap <C-p> :Files<CR>
inoremap <C-p> <Esc>:Files<CR>
nnoremap <C-o> :Buffers<CR>
inoremap <C-o> <Esc>:Buffers<CR>
inoremap <C-f> <Esc>:BLines<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <C-R> :Rg<CR>
inoremap <C-R> <Esc>:Rg<CR>
inoremap jj <Esc>
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

nnoremap ; :
nnoremap <C-Z> u
inoremap <C-Z> <Esc>ui
nnoremap <C-Y> <C-R>
inoremap <C-Y> <Esc><C-R>i

vnoremap <C-c> y


" mapping leader+ forward slash for commenting
nnoremap <C-_> :Commentary<CR>
inoremap <C-_> <Esc>:Commentary<CR>i
vnoremap <C-_> :Commentary<CR>


" coc configs
" source $HOME/.config/nvim/module_configs/coc.vim
