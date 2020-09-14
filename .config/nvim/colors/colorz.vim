" ~/.config/nvim/colors/colorz.vim
" -------------------------------------
" neovim syntax highlighting theme


" Scheme setup {{{
hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:colors_name = 'colorz'

"}}}
" Vim Editor {{{

" hi ColorColumn
" hi Conceal
" hi Cursor
" hi CursorIM
" hi CursorColumn
" hi CursorLine
hi Directory           ctermfg=4     ctermbg=NONE     cterm=NONE
hi DiffAdd             ctermfg=0     ctermbg=2        cterm=NONE
hi DiffChange          ctermfg=0     ctermbg=3        cterm=NONE
hi DiffDelete          ctermfg=0     ctermbg=1        cterm=NONE
hi DiffText            ctermfg=0     ctermbg=11       cterm=bold
hi EndOfBuffer         ctermfg=8     ctermbg=NONE     cterm=NONE
" hi TermCursor
" hi TermCursorNC
hi ErrorMsg            ctermfg=1     ctermbg=NONE     cterm=NONE
hi VertSplit           ctermfg=0     ctermbg=NONE     cterm=NONE
hi Folded              ctermfg=3     ctermbg=NONE     cterm=italic
hi FoldColumn          ctermfg=8     ctermbg=NONE     cterm=NONE
hi SignColumn          ctermfg=8     ctermbg=NONE     cterm=NONE
" hi IncSearch
" hi Substitute
hi LineNr              ctermfg=8     ctermbg=NONE     cterm=NONE
hi CursorLineNr        ctermfg=7     ctermbg=NONE     cterm=NONE
hi MatchParen          ctermfg=11    ctermbg=11       cterm=bold
hi ModeMsg             ctermfg=7     ctermbg=NONE     cterm=NONE
" hi MsgSeparator
hi MoreMsg             ctermfg=2     ctermbg=NONE     cterm=NONE
hi NonText             ctermfg=8     ctermbg=NONE     cterm=NONE
hi Normal              ctermfg=7     ctermbg=NONE     cterm=NONE
hi NormalNC            ctermfg=15    ctermbg=NONE     cterm=NONE
hi Pmenu               ctermfg=15    ctermbg=0        cterm=NONE
hi PmenuSel            ctermfg=0     ctermbg=6        cterm=NONE
hi PmenuSBar           ctermfg=0     ctermbg=8        cterm=NONE
hi PmenuThumb          ctermfg=0     ctermbg=7        cterm=NONE
hi Question            ctermfg=4     ctermbg=NONE     cterm=NONE
hi QuickFixLine        ctermfg=4     ctermbg=NONE     cterm=NONE
hi Search              ctermfg=0     ctermbg=11       cterm=NONE
hi SpecialKey          ctermfg=8     ctermbg=NONE     cterm=NONE
hi SpellBad            ctermfg=1     ctermbg=NONE     cterm=underline
hi SpellCap            ctermfg=3     ctermbg=NONE     cterm=underline
hi SpellLocal          ctermfg=3     ctermbg=NONE     cterm=underline
hi SpellRare           ctermfg=3     ctermbg=NONE     cterm=underline
hi StatusLine          ctermfg=7     ctermbg=0        cterm=NONE
hi StatusLineNC        ctermfg=8     ctermbg=0        cterm=NONE
hi StatusLineTerm      ctermfg=0     ctermbg=2        cterm=NONE
hi StatusLineTermNC    ctermfg=0     ctermbg=2        cterm=NONE
hi TabLine             ctermfg=15    ctermbg=0        cterm=NONE
hi TabLineFill         ctermfg=15    ctermbg=0        cterm=NONE
hi TabLineSel          ctermfg=0     ctermbg=6        cterm=NONE
hi Title               ctermfg=2     ctermbg=NONE     cterm=NONE
hi Visual              ctermfg=0     ctermbg=7        cterm=NONE
hi VisualNOS           ctermfg=0     ctermbg=8        cterm=NONE
hi WarningMsg          ctermfg=1     ctermbg=NONE     cterm=NONE
hi Whitespace          ctermfg=8     ctermbg=NONE     cterm=NONE
hi WildMenu            ctermfg=NONE  ctermbg=8        cterm=NONE

"}}}
" Generic syntax {{{

" hi Delimiter           ctermfg=7     ctermbg=NONE     cterm=NONE
" hi Identifier          ctermfg=1     ctermbg=NONE     cterm=NONE
" hi Include             ctermfg=4     ctermbg=NONE     cterm=NONE
" hi Ignore              ctermfg=8     ctermbg=NONE     cterm=NONE
" hi Keyword             ctermfg=4     ctermbg=NONE     cterm=NONE
" hi Macro               ctermfg=5     ctermbg=NONE     cterm=NONE
" hi Number              ctermfg=14    ctermbg=NONE     cterm=NONE
" hi Operator            ctermfg=5     ctermbg=NONE     cterm=NONE
" hi PreProc             ctermfg=6     ctermbg=NONE     cterm=NONE
" hi Special             ctermfg=13    ctermbg=NONE     cterm=NONE
" hi Statement           ctermfg=5     ctermbg=NONE     cterm=NONE
" hi Structure           ctermfg=6     ctermbg=NONE     cterm=NONE
" hi String              ctermfg=2     ctermbg=NONE     cterm=NONE
" hi Type                ctermfg=5     ctermbg=NONE     cterm=NONE
" hi Todo                ctermfg=11    ctermbg=NONE     cterm=bold
" hi Underlined          ctermfg=4     ctermbg=NONE     cterm=underline
" hi Urgent              ctermfg=1     ctermbg=NONE     cterm=bold



hi Comment	       ctermfg=8     ctermbg=NONE     cterm=italic

hi Constant	       ctermfg=3     ctermbg=NONE     cterm=NONE
hi String	       ctermfg=2     ctermbg=NONE     cterm=NONE
hi Character	       ctermfg=2     ctermbg=NONE     cterm=NONE
hi Number	       ctermfg=3     ctermbg=NONE     cterm=NONE
hi Boolean	       ctermfg=3     ctermbg=NONE     cterm=NONE
hi Float	       ctermfg=3     ctermbg=NONE     cterm=NONE

hi Identifier	       ctermfg=7     ctermbg=NONE     cterm=NONE
hi Function	       ctermfg=4     ctermbg=NONE     cterm=NONE

hi Statement	       ctermfg=6     ctermbg=NONE     cterm=NONE
hi Conditional	       ctermfg=6     ctermbg=NONE     cterm=italic
hi Repeat	       ctermfg=6     ctermbg=NONE     cterm=italic
hi Label	       ctermfg=6     ctermbg=NONE     cterm=italic
hi Operator	       ctermfg=5     ctermbg=NONE     cterm=NONE
hi Keyword	       ctermfg=3     ctermbg=NONE     cterm=NONE
hi Exception	       ctermfg=6     ctermbg=NONE     cterm=italic

hi PreProc	       ctermfg=6     ctermbg=NONE     cterm=NONE
hi Include	       ctermfg=6     ctermbg=NONE     cterm=italic
hi Define	       ctermfg=6     ctermbg=NONE     cterm=italic
hi Macro	       ctermfg=6     ctermbg=NONE     cterm=italic
hi PreCondit	       ctermfg=6     ctermbg=NONE     cterm=italic

hi Type                ctermfg=5     ctermbg=NONE     cterm=NONE
hi StorageClass	       ctermfg=5     ctermbg=NONE     cterm=NONE
hi Structure	       ctermfg=5     ctermbg=NONE     cterm=NONE
hi Typedef	       ctermfg=3     ctermbg=NONE     cterm=NONE

hi Special	       ctermfg=3     ctermbg=NONE     cterm=NONE
hi SpecialChar	       ctermfg=6     ctermbg=NONE     cterm=NONE
hi Tag		       ctermfg=1     ctermbg=NONE     cterm=NONE
hi Delimiter	       ctermfg=7     ctermbg=NONE     cterm=NONE
hi SpecialComment      ctermfg=8     ctermbg=NONE     cterm=NONE
hi Debug	       ctermfg=3     ctermbg=NONE     cterm=NONE

hi Underlined	       ctermfg=4     ctermbg=NONE     cterm=underline

hi Ignore	       ctermfg=8     ctermbg=NONE     cterm=NONE

hi Error	       ctermfg=1     ctermbg=NONE     cterm=NONE

hi Todo                ctermfg=11    ctermbg=NONE     cterm=bold

"}}}
" Git Commit Messages {{{

" call s:SetHighlight('gitcommitHeader', s:purple, '', '')
" call s:SetHighlight('gitcommitUnmerged', s:green, '', '')
" call s:SetHighlight('gitcommitSelectedFile', s:green, '', '')
" call s:SetHighlight('gitcommitDiscardedFile', s:red, '', '')
" call s:SetHighlight('gitcommitUnmergedFile', s:yellow, '', '')
" call s:SetHighlight('gitcommitSelectedType', s:green, '', '')
" call s:SetHighlight('gitcommitSummary', s:blue, '', '')
" call s:SetHighlight('gitcommitDiscardedType', s:red, '', '')
" hi link gitcommitNoBranch gitcommitBranch
" hi link gitcommitUntracked gitcommitComment
" hi link gitcommitDiscarded gitcommitComment
" hi link gitcommitSelected gitcommitComment
" hi link gitcommitDiscardedArrow gitcommitDiscardedFile
" hi link gitcommitSelectedArrow gitcommitSelectedFile
" hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" }}}
" Javascript {{{

" call s:SetHighlight('javaScriptBraces', s:fg, '', '')
" call s:SetHighlight('javaScriptNull', s:orange, '', '')
" call s:SetHighlight('javaScriptIdentifier', s:purple, '', '')
" call s:SetHighlight('javaScriptNumber', s:orange, '', '')
" call s:SetHighlight('javaScriptRequire', s:cyan, '', '')
" call s:SetHighlight('javaScriptReserved', s:purple, '', '')

" }}}
" JSON {{{
hi jsonBraces          ctermfg=15

" }}}
" CSS {{{
hi cssAttrComma        ctermfg=15
hi cssPseudoClassId    ctermfg=3
hi cssBraces           ctermfg=15
hi cssClassName        ctermfg=3
hi cssClassNameDot     ctermfg=3
hi cssFunctionName     ctermfg=4
hi cssImportant        ctermfg=6
hi cssIncludeKeyword   ctermfg=13
hi cssTagName          ctermfg=1
hi cssMediaType        ctermfg=11
hi cssProp             ctermfg=15
hi cssSelectorOp       ctermfg=6
hi cssSelectorOp2      ctermfg=6

" }}}
" Sass {{{
hi sassAmpersand       ctermfg=1
hi sassClassChar       ctermfg=3
hi sassMixinName       ctermfg=4
hi sassVariable        ctermfg=5

" }}}
" Less {{{
hi lessAmpersand       ctermfg=1
hi lessClassChar       ctermfg=3
hi lessCssAttribute    ctermfg=15
hi lessFunction        ctermfg=4
hi lessVariable        ctermfg=5

" }}}
" HTML {{{
hi htmlEndTag          ctermfg=4
hi htmlLink            ctermfg=1
hi htmlTag             ctermfg=4
hi htmlTitle           ctermfg=15
hi htmlSpecialTagName  ctermfg=5
hi htmlArg             ctermfg=3     cterm=italic

" }}}
" XML {{{
hi xmlAttrib           ctermfg=3     cterm=italic
hi xmlEndTag           ctermfg=4
hi xmlTag              ctermfg=4
hi xmlTagName          ctermfg=4

" }}}

" " Golang
" call s:SetHighlight('goFunctionCall', s:blue, '', '')
" call s:SetHighlight('goReceiverType', s:green, '', '')
" call s:SetHighlight('goParamName', s:orange, '', '')
" call s:SetHighlight('goParamType', s:green, '', '')
" call s:SetHighlight('goTypeDecl', s:purple, '', '')
" call s:SetHighlight('goTypeName', s:yellow, '', '')
" call s:SetHighlight('goBuiltins', s:red, '', '')
" call s:SetHighlight('goType', s:purple, '', '')
" call s:SetHighlight('goSignedInts', s:purple, '', '')
" call s:SetHighlight('goUnsignedInts', s:purple, '', '')
" call s:SetHighlight('goFloats', s:purple, '', '')
" call s:SetHighlight('goComplexes', s:purple, '', '')

" " Ruby
" call s:SetHighlight('rubyInterpolation', s:cyan, '', '')
" call s:SetHighlight('rubyInterpolationDelimiter', s:violet, '', '')
" call s:SetHighlight('rubyRegexp', s:cyan, '', '')
" call s:SetHighlight('rubyRegexpDelimiter', s:violet, '', '')
" call s:SetHighlight('rubyStringDelimiter', s:green, '', '')

" " TeX
" call s:SetHighlight('texBeginEndName', s:blue, '', '')
" call s:SetHighlight('texMathMatcher', s:blue, '', '')
" call s:SetHighlight('texCite', s:green, '', '')
" call s:SetHighlight('texRefZone', s:green, '', '')
" call s:SetHighlight('texInputFile', s:green, '', '')
" call s:SetHighlight('texMath', s:orange, '', '')
" call s:SetHighlight('texMathOper', s:yellow, '', '')

" " Markdown
" call s:SetHighlight('markdownBold', s:yellow, '', 'bold')
" call s:SetHighlight('markdownCode', s:cyan, '', '')
" call s:SetHighlight('markdownCodeBlock', s:cyan, '', '')
" call s:SetHighlight('markdownCodeDelimiter', s:cyan, '', '')
" call s:SetHighlight('markdownHeadingDelimiter', s:green, '', '')
" call s:SetHighlight('markdownHeadingRule', s:comments, '', '')
" call s:SetHighlight('markdownId', s:purple, '', '')
" call s:SetHighlight('markdownItalic', s:blue, '', 'italic')
" call s:SetHighlight('markdownListMarker', s:orange, '', '')
" call s:SetHighlight('markdownOrderedListMarker', s:orange, '', '')
" call s:SetHighlight('markdownRule', s:comments, '', '')
" call s:SetHighlight('markdownUrl', s:purple, '', '')
" call s:SetHighlight('markdownUrlTitleDelimiter', s:green, '', '')

" " vim-gitgutter
" call s:SetHighlight('GitGutterAdd', s:green, '', '')
" call s:SetHighlight('GitGutterChange', s:yellow, '', '')
" call s:SetHighlight('GitGutterChangeDelete', s:orange, '', '')
" call s:SetHighlight('GitGutterDelete', s:red, '', '')

" " vim-signify
" hi link SignifySignAdd GitGutterAdd
" hi link SignifySignChange GitGutterChange
" hi link SignifySignDelete GitGutterDelete

" vim-better-whitespace {{{
hi ExtraWhitespace     ctermfg=NONE  ctermbg=1

" }}}

" vim: fdm=marker:sw=2:sts=2:et

