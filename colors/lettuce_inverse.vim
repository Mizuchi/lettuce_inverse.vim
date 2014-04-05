" Vim color file
"     Version:    1.2 2007.08.08
"     Author:     Valyaeff Valentin <hhyperr AT gmail DOT com>
"     License:    GPL
"
" Copyright 2007 Valyaeff Valentin
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="lettuce_inverse"


augroup Syntax_extensions
    au!
    au Syntax c,cpp,ruby,javascript syn match Operator "[*/%&|!=><^~,.;+-]\+" display contains=TOP
    au Syntax c,cpp syn region cParen matchgroup=Operator transparent start='(' end=')' contains=ALLBUT,@cParenGroup,cCppParen,cErrInBracket,cCppBracket,cCppString,@Spell
    au Syntax c,cpp syn region cCppParen matchgroup=Operator transparent start='(' skip='\\$' excludenl end=')' end='$' contained contains=ALLBUT,@cParenGroup,cErrInBracket,cParen,cBracket,cString,@Spell
    au Syntax c,cpp syn region cBracket matchgroup=Operator transparent start='\[\|<::\@!' end=']\|:>' contains=ALLBUT,@cParenGroup,cErrInParen,cCppParen,cCppBracket,cCppString,@Spell
    au Syntax c,cpp syn region cCppBracket matchgroup=Operator transparent start='\[\|<::\@!' skip='\\$' excludenl end=']\|:>' end='$' contained contains=ALLBUT,@cParenGroup,cErrInParen,cParen,cBracket,cString,@Spell
    au Syntax c,cpp syn region cBlock matchgroup=OperatorCurlyBrackets start="{" end="}" transparent fold
    au Syntax ruby syn match rubyBlockParameter "\%(\%(\<do\>\|{\)\s*\)\@<=|\s*[( ,a-zA-Z0-9_*)]\+\ze\s*|"hs=s+1 display
    au Syntax ruby syn region rubyCurlyBlock matchgroup=Operator start="{" end="}" contains=ALLBUT,@rubyExtendedStringSpecial,rubyTodo fold
    au Syntax ruby syn region rubyParentheses matchgroup=Operator start="(" end=")" contains=ALLBUT,@rubyExtendedStringSpecial,rubyTodo
    au Syntax ruby syn region rubySquareBrackets matchgroup=Operator start="\[" end="\]" contains=ALLBUT,@rubyExtendedStringSpecial,rubyTodo
    au Syntax javascript syn region javascriptCurlyBrackets matchgroup=Operator start="{" end="}" transparent fold
    au Syntax javascript syn region javascriptParentheses matchgroup=Operator start="(" end=")" transparent
    au Syntax javascript syn region javascriptSquareBrackets matchgroup=Operator start="\[" end="\]" transparent
augroup END


if !has("gui_running")

hi rubyGlobalVariable       cterm=none                   ctermfg=141
hi rubyPredefinedIdentifier cterm=bold                   ctermfg=141
hi def link rubyStringDelimiter String

hi Normal           cterm=none       ctermbg=15 ctermfg=234
hi StatusLine       cterm=none       ctermbg=252 ctermfg=0
hi StatusLineNC     cterm=none       ctermbg=252 ctermfg=101
hi User1            cterm=bold       ctermbg=252 ctermfg=17
hi User2            cterm=none       ctermbg=252 ctermfg=248
hi VertSplit        cterm=none       ctermbg=252 ctermfg=101
hi TabLine          cterm=none       ctermbg=252 ctermfg=239
hi TabLineFill      cterm=none       ctermbg=252
hi TabLineSel       cterm=none       ctermbg=248 ctermfg=235
hi LineNr           cterm=none                   ctermfg=250
hi NonText          cterm=bold       ctermbg=255 ctermfg=247
hi Folded           cterm=none       ctermbg=254 ctermfg=69
hi FoldColumn       cterm=none       ctermbg=252 ctermfg=101
hi SignColumn       cterm=none       ctermbg=252 ctermfg=101
hi CursorColumn     cterm=none       ctermbg=254
hi CursorLine       cterm=none       ctermbg=254
hi IncSearch        cterm=bold       ctermbg=142 ctermfg=15
hi Search           cterm=none       ctermbg=204 ctermfg=15
hi Visual           cterm=none       ctermbg=216
hi WildMenu         cterm=bold       ctermbg=205 ctermfg=15
hi ModeMsg          cterm=bold                   ctermfg=94
hi MoreMsg          cterm=bold                   ctermfg=89
hi Question         cterm=bold                   ctermfg=89
hi ErrorMsg         cterm=none       ctermbg=123 ctermfg=233
hi WarningMsg       cterm=none       ctermbg=147 ctermfg=233
hi SpecialKey       cterm=none                   ctermfg=127
hi Title            cterm=bold                   ctermfg=58
hi Directory                                     ctermfg=3
hi DiffAdd          cterm=none       ctermbg=228
hi DiffChange       cterm=none       ctermbg=147
hi DiffDelete       cterm=none       ctermbg=159 ctermfg=147
hi DiffText         cterm=none       ctermbg=157
hi Pmenu            cterm=none       ctermbg=229 ctermfg=89
hi PmenuSel         cterm=none       ctermbg=216 ctermfg=89
hi PmenuSbar        cterm=none       ctermbg=227
hi PmenuThumb       cterm=none       ctermbg=203
hi MatchParen       cterm=bold       ctermbg=216
hi SpellBad         cterm=none       ctermbg=123
hi SpellCap         cterm=none       ctermbg=228
hi SpellLocal       cterm=none       ctermbg=210
hi SpellRare        cterm=none       ctermbg=120

hi Comment          cterm=none                   ctermfg=66
hi Constant         cterm=none                   ctermfg=25
 hi String          cterm=none       ctermbg=253 ctermfg=25
 hi Character       cterm=none       ctermbg=253 ctermfg=25
 hi Number          cterm=none                   ctermfg=207
 hi Float           cterm=none                   ctermfg=199
hi Identifier       cterm=none                   ctermfg=4
 hi Function        cterm=none                   ctermfg=6
hi Statement        cterm=bold                   ctermfg=142
 hi Exception       cterm=bold                   ctermfg=106
 hi Operator        cterm=none                   ctermfg=130
 hi Label           cterm=none                   ctermfg=142
hi PreProc          cterm=bold                   ctermfg=204
hi Type             cterm=bold                   ctermfg=133
hi Special          cterm=none       ctermbg=253 ctermfg=124
hi Underlined       cterm=underline              ctermfg=19
hi Ignore           cterm=bold                   ctermfg=253
hi Error            cterm=bold       ctermbg=159 ctermfg=0
hi Todo             cterm=bold       ctermbg=61 ctermfg=15

hi OperatorCurlyBrackets cterm=bold ctermfg=130

" highlight modes
autocmd InsertEnter * hi StatusLine ctermbg=159
autocmd InsertEnter * hi User1      ctermbg=159
autocmd InsertEnter * hi User2      ctermbg=159
autocmd InsertLeave * hi User2      ctermbg=252
autocmd InsertLeave * hi User1      ctermbg=252
autocmd InsertLeave * hi StatusLine ctermbg=252
autocmd CmdwinEnter * hi StatusLine ctermbg=219
autocmd CmdwinEnter * hi User1      ctermbg=219
autocmd CmdwinEnter * hi User2      ctermbg=219
autocmd CmdwinLeave * hi User2      ctermbg=252
autocmd CmdwinLeave * hi User1      ctermbg=252
autocmd CmdwinLeave * hi StatusLine ctermbg=252

else

hi rubyGlobalVariable       gui=none                   guifg=#a078ff
hi rubyPredefinedIdentifier gui=bold                   guifg=#a078ff
hi def link rubyStringDelimiter String

hi Normal           gui=none       guibg=#f7f7f7 guifg=#202000
hi StatusLine       gui=none       guibg=#cfcfcf guifg=#000000
hi StatusLineNC     gui=none       guibg=#cfcfcf guifg=#787850
hi User1            gui=bold       guibg=#cfcfcf guifg=#002050
hi User2            gui=none       guibg=#cfcfcf guifg=#a7a7a7
hi VertSplit        gui=none       guibg=#cfcfcf guifg=#787850
hi TabLine          gui=none       guibg=#cfcfcf guifg=#505050
hi TabLineFill      gui=none       guibg=#cfcfcf
hi TabLineSel       gui=none       guibg=#a7a7a7 guifg=#252525
hi LineNr           gui=none                   guifg=#bbbbbb
hi NonText          gui=bold       guibg=#ededed guifg=#9f9f9f
hi Folded           gui=none       guibg=#e3e3e3 guifg=#5078ff
hi FoldColumn       gui=none       guibg=#cfcfcf guifg=#787850
hi SignColumn       gui=none       guibg=#cfcfcf guifg=#787850
hi CursorColumn     gui=none       guibg=#e3e3e3
hi CursorLine       gui=none       guibg=#e3e3e3
hi IncSearch        gui=bold       guibg=#a0a000 guifg=#f7f7f7
hi Search           gui=none       guibg=#ff5078 guifg=#f7f7f7
hi Visual           gui=none       guibg=#ffa078
hi WildMenu         gui=bold       guibg=#ff50a0 guifg=#f7f7f7
hi ModeMsg          gui=bold                   guifg=#785020
hi MoreMsg          gui=bold                   guifg=#780050
hi Question         gui=bold                   guifg=#780050
hi ErrorMsg         gui=none       guibg=#78ffff guifg=#111111
hi WarningMsg       gui=none       guibg=#a0a0ff guifg=#111111
hi SpecialKey       gui=none                   guifg=#a020a0
hi Title            gui=bold                   guifg=#505000
hi Directory                                     guifg=#787800
hi DiffAdd          gui=none       guibg=#ffff78
hi DiffChange       gui=none       guibg=#a0a0ff
hi DiffDelete       gui=none       guibg=#a0ffff guifg=#a0a0ff
hi DiffText         gui=none       guibg=#a0ffa0
hi Pmenu            gui=none       guibg=#ffffa0 guifg=#780050
hi PmenuSel         gui=none       guibg=#ffa078 guifg=#780050
hi PmenuSbar        gui=none       guibg=#ffff50
hi PmenuThumb       gui=none       guibg=#ff5050
hi MatchParen       gui=bold       guibg=#ffa078
hi SpellBad         gui=none       guibg=#78ffff
hi SpellCap         gui=none       guibg=#ffff78
hi SpellLocal       gui=none       guibg=#ff7878
hi SpellRare        gui=none       guibg=#78ff78

hi Comment          gui=none                   guifg=#507878
hi Constant         gui=none                   guifg=#0050a0
 hi String          gui=none       guibg=#d9d9d9 guifg=#0050a0
 hi Character       gui=none       guibg=#d9d9d9 guifg=#0050a0
 hi Number          gui=none                   guifg=#ff50ff
 hi Float           gui=none                   guifg=#ff20a0
hi Identifier       gui=none                   guifg=#202078
 hi Function        gui=none                   guifg=#007878
hi Statement        gui=bold                   guifg=#a0a000
 hi Exception       gui=bold                   guifg=#78a000
 hi Operator        gui=none                   guifg=#a05000
 hi Label           gui=none                   guifg=#a0a000
hi PreProc          gui=bold                   guifg=#ff5078
hi Type             gui=bold                   guifg=#a050a0
hi Special          gui=none       guibg=#d9d9d9 guifg=#a00000
hi Underlined       gui=underline              guifg=#0000a0
hi Ignore           gui=bold                   guifg=#d9d9d9
hi Error            gui=bold       guibg=#a0ffff guifg=#000000
hi Todo             gui=bold       guibg=#5050a0 guifg=#ffffff

hi OperatorCurlyBrackets gui=bold guifg=#a05000

" highlight modes
autocmd InsertEnter * hi StatusLine guibg=#a0ffff
autocmd InsertEnter * hi User1      guibg=#a0ffff
autocmd InsertEnter * hi User2      guibg=#a0ffff
autocmd InsertLeave * hi User2      guibg=#cfcfcf
autocmd InsertLeave * hi User1      guibg=#cfcfcf
autocmd InsertLeave * hi StatusLine guibg=#cfcfcf
autocmd CmdwinEnter * hi StatusLine guibg=#ffa0ff
autocmd CmdwinEnter * hi User1      guibg=#ffa0ff
autocmd CmdwinEnter * hi User2      guibg=#ffa0ff
autocmd CmdwinLeave * hi User2      guibg=#cfcfcf
autocmd CmdwinLeave * hi User1      guibg=#cfcfcf
autocmd CmdwinLeave * hi StatusLine guibg=#cfcfcf

end
