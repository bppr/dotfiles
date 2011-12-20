
if exists("b:current_syntax")
  finish
endif


syn match WindowDIM "\_.*"		       

let b:current_syntax = "dim"
