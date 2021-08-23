" Vim syntax file
" Language: NetSimLan
" Maintainer: Tim Storm
" Latest Revision: 30 April 2021

if exists("b:current_syntax")
  finish
endif

syntax keyword nslConstant null true false MIN_INTEGER MAX_INTEGER POSITIVE_INFINITYY NEGATIVE_INFINITY PI E NaN

highlight link nslConstant Constant

syntax keyword nslKeyword if else while for break continue return
highlight link nslKeyword Keyword

" standard functions
syntax keyword nslFunction entry init timeout length id longitude latitude type hash hash2 hash3 containts str_len sub_str random sqrt log round sin cos tan arcsin arccos arctan sinh tanh print visLabel sleep kill mark synchronize startRound
highlight link nslFunction Function

" all primitive datatypes available
syntax keyword nslDatatype node int float bool string
highlight link nslDatatype Type

" double quoted string
syntax region nslString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link nslString String

" various operators
syntax match nslOperator "\v\*"
syntax match nslOperator "\v\+"
syntax match nslOperator "\v-"
syntax match nslOperator "\v/"
syntax match nslOperator "\v\+\+"
syntax match nslOperator "\v--"
syntax match nslOperator "\v\=\="
syntax match nslOperator "\v\="
syntax match nslOperator "\v\<"
syntax match nslOperator "\v\<\="
syntax match nslOperator "\v\>"
syntax match nslOperator "\v\>\="
syntax match nslOperator "\v\!\="
highlight link nslOperator Operator

" function call
syntax match functionCall "-\>"
highlight link functionCall Operator

" python-esque identifiers
syntax match nslIdentifier '\b[a-zA-Z][a-zA-Z0-9]*\b'
highlight link nslIdentifier Identifier


" floating point numbers in scientific and standard notation
syntax match nslFPNumber '((([0-9]+\.[0-9]*)|(\.[0-9]+))((e|E)(\+|\-)?[0-9]+)?)|([0-9]+(e|E)(\+|)?[0-9]+)'

syntax match nslNumber '(?x)\n(?<!\\$)\n(\n  \\b[0-9]([0-9_]*[0-9])?\\.\\B(?!\\.)\n  |\n  \\b[0-9]([0-9_]*[0-9])?\\.([Ee][+-]?[0-9]([0-9_]*[0-9])?)[FfDd]?\\b\n  |\n  \\b[0-9]([0-9_]*[0-9])?\\.([Ee][+-]?[0-9]([0-9_]*[0-9])?)?[FfDd]\\b\n  |\n  \\b[0-9]([0-9_]*[0-9])?\\.([0-9]([0-9_]*[0-9])?)([Ee][+-]?[0-9]([0-9_]*[0-9])?)?[FfDd]?\\b\n  |\n  (?<!\\.)\\B\\.[0-9]([0-9_]*[0-9])?([Ee][+-]?[0-9]([0-9_]*[0-9])?)?[FfDd]?\\b\n  |\n  \\b[0-9]([0-9_]*[0-9])?([Ee][+-]?[0-9]([0-9_]*[0-9])?)[FfDd]?\\b\n  |\n  \\b[0-9]([0-9_]*[0-9])?([Ee][+-]?[0-9]([0-9_]*[0-9])?)?[FfDd]\\b\n  |\n  \\b(0|[1-9]([0-9_]*[0-9])?)(?!\\.)[Ll]?\\b\n)\n(?!\\$)'

highlight link nslNumber Number
highlight link nslFPNumber Float

" comments on /* */
syntax match nslComment "/\*.*\*/"
syntax region nslComment start="/\*" end="\*/"
highlight link nslComment Comment


let b:current_syntax = "netsimlan"
