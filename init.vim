call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  " Plug 'flazz/vim-colorschemes'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-clangd']
  Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

"Config Section
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme dracula

" Basic settings
set number
set expandtab
set shiftwidth=2
set tabstop=2
set sts=2
set autoindent

" c++ syntax highlighting
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
