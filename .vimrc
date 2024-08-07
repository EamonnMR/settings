set nocompatible              " be iMproved, required
filetype off                  " required

set history=9001

autocmd BufNewFile,BufRead *.fx set syntax=c

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'rust-lang/rust.vim'

" My favorite SublimeText/Atom feature "
Plugin 'airblade/vim-gitgutter'

Plugin 'ziglang/zig.vim'

Plugin 'zah/nim.vim'
call vundle#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert spaces
set expandtab

" https://vim.fandom.com/wiki/Toggle_spellcheck_with_function_keys
" Spell Check
function! ToggleSpell()
  setlocal spell! spell?
endfunction

nmap <silent> <F7> :call ToggleSpell()<CR>

command Sp call ToggleSpell()

