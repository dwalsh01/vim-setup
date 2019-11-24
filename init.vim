source ~/.vimrc
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'joshdick/onedark.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

let g:deoplete#enable_at_startup = 1
set nospell
" NERDTree
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:nerdtree_tabs_focus_on_files=1
let NERDTreeShowHidden=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeLimitedSyntax = 1
let NERDTreeDirArrows = 1

" set stuff
set shiftwidth=2
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2   " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" show line numbers
set number

" ale
let g:ale_fixers = ['prettier', 'eslint', 'tslint']
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_sign_error = '❗️'
let g:ale_sign_warning = '👀'
let g:ale_fix_on_save = 1

"keybinds
noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"auto
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" theme
set termguicolors
syntax enable

augroup MyColors
    autocmd!
    autocmd ColorScheme * highlight typescriptStorageClass guifg=#61AFEF guibg=Ngui gui=italic
                      \ | highlight typescriptLineComment guifg=#A8A8A8 gui=italic
                      \ | highlight tsxAttrib guifg=#E5C07B gui=italic
                      \ | highlight tsxEqual guifg=#E5C07B gui=italic
                      \ | highlight tsxTag guifg=#E06C75 gui=italic
                      \ | highlight tsxJsBlock guifg=#56B6C2 gui=italic
                      \ | highlight tsxTypes guifg=#56B6C2 gui=italic
                      \ | highlight cssTextProp guifg=#98C379 gui=italic
                      \ | highlight cssBoxProp guifg=#98C379 gui=italic
                      \ | highlight cssMediaProp guifg=#98C379 gui=italic
                      \ | highlight cssFontProp guifg=#98C379 gui=italic
                      \ | highlight cssVendor guifg=#98C379 gui=italic
                      \ | highlight cssCustomPositioningPrefix guifg=#98C379 gui=italic
                      \ | highlight typescriptInterpolation guifg=#E5C07B gui=italic
                      \ | highlight typescriptIdentierName guifg=#E5C07B gui=italic
  augroup END

colorscheme onedark

" 256 term
set t_Co=256

"coc config
let g:coc_global_extensions = [
      \  'coc-snippets',
      \'coc-pairs',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \'coc-prettier',
      \'coc-json'
      \]

" check tag
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
