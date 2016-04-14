" Vim syntax file
" Language: Emerald
" Maintainer: Jake Worth
" Latest Revision: 19 April 2016

if exists("b:current_syntax")
  finish
endif

" match basic keywords
syn keyword emeraldKeyword funct printit end return

" match strings
syn region emeraldString start='"' end='"' contained
syn region emeraldString start='"' end='"'

" match booleans
syn match emeraldBoolean "\<\%(true\|false\)\>[?!]\@!"

" match integers
syn match emeraldNumber '\d\+'
syn match emeraldNumber '[-+]\d\+'

" match comments
syn match emeraldComment "--.*$"

" highlight the syntax!
let b:current_syntax = "emerald"

" Associate Emerald's types with Vim's types
hi def link emeraldString      Constant
hi def link emeraldBoolean     Boolean
hi def link emeraldNumber      Constant
hi def link emeraldComment     Comment
hi def link emeraldKeyword     Keyword
