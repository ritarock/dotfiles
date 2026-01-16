set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "shinonome"

" ============================================================================
" Color Palette
" ============================================================================
" Background:    #242424 (neutral dark)
" Foreground:    #e0d4b8 (warm cream)
"
" Moss Green:    #7a8563 (comments)
" Leaf Green:    #a8c97f (strings)
" Autumn Orange: #f0a050 (keywords)
" Bark Brown:    #ddb870 (functions)
" Berry Red:     #e8805a (numbers, errors)
" Sky Blue:      #8fd4d4 (types)
" Flower Purple: #b897c9 (special)
" Sunlight:      #f5e0a0 (constants)

" ============================================================================
" Editor Settings
" ============================================================================
hi Normal           guifg=#e0d4b8   guibg=#242424   gui=NONE        ctermfg=187   ctermbg=235    cterm=NONE
hi Cursor           guifg=#242424   guibg=#e0d4b8   gui=NONE        ctermfg=235   ctermbg=187    cterm=NONE
hi CursorLine       guifg=NONE      guibg=#2d2d2d   gui=NONE        ctermfg=NONE  ctermbg=236    cterm=NONE
hi CursorLineNr     guifg=#f0a050   guibg=#2d2d2d   gui=NONE        ctermfg=214   ctermbg=236    cterm=NONE
hi CursorColumn     guifg=NONE      guibg=#2d2d2d   gui=NONE        ctermfg=NONE  ctermbg=236    cterm=NONE
hi ColorColumn      guifg=NONE      guibg=#2a2a2a   gui=NONE        ctermfg=NONE  ctermbg=236    cterm=NONE
hi LineNr           guifg=#505050   guibg=NONE      gui=NONE        ctermfg=241   ctermbg=NONE   cterm=NONE
hi SignColumn       guifg=NONE      guibg=#242424   gui=NONE        ctermfg=NONE  ctermbg=235    cterm=NONE
hi VertSplit        guifg=#3a3a3a   guibg=#242424   gui=NONE        ctermfg=239   ctermbg=235    cterm=NONE
hi Folded           guifg=#7a8563   guibg=#2a2a2a   gui=italic      ctermfg=102   ctermbg=236    cterm=NONE
hi FoldColumn       guifg=#7a8563   guibg=#242424   gui=NONE        ctermfg=102   ctermbg=235    cterm=NONE
hi NonText          guifg=#3a3a3a   guibg=NONE      gui=NONE        ctermfg=239   ctermbg=NONE   cterm=NONE
hi SpecialKey       guifg=#3a3a3a   guibg=NONE      gui=NONE        ctermfg=239   ctermbg=NONE   cterm=NONE
hi EndOfBuffer      guifg=#3a3a3a   guibg=NONE      gui=NONE        ctermfg=239   ctermbg=NONE   cterm=NONE

" ============================================================================
" Selection & Search
" ============================================================================
hi Visual           guifg=NONE      guibg=#3a3a3a   gui=NONE        ctermfg=NONE  ctermbg=239    cterm=NONE
hi VisualNOS        guifg=NONE      guibg=#3a3a3a   gui=NONE        ctermfg=NONE  ctermbg=239    cterm=NONE
hi Search           guifg=#242424   guibg=#f5e0a0   gui=NONE        ctermfg=235   ctermbg=222    cterm=NONE
hi IncSearch        guifg=#242424   guibg=#f0a050   gui=NONE        ctermfg=235   ctermbg=214    cterm=NONE
hi MatchParen       guifg=#f5e0a0   guibg=#505050   gui=bold        ctermfg=222   ctermbg=241    cterm=bold

" ============================================================================
" Status Line & Tab Line
" ============================================================================
hi StatusLine       guifg=#e0d4b8   guibg=#333333   gui=NONE        ctermfg=187   ctermbg=237    cterm=NONE
hi StatusLineNC     guifg=#7a8563   guibg=#2a2a2a   gui=NONE        ctermfg=102   ctermbg=236    cterm=NONE
hi TabLine          guifg=#7a8563   guibg=#2a2a2a   gui=NONE        ctermfg=102   ctermbg=236    cterm=NONE
hi TabLineFill      guifg=NONE      guibg=#242424   gui=NONE        ctermfg=NONE  ctermbg=235    cterm=NONE
hi TabLineSel       guifg=#e0d4b8   guibg=#333333   gui=bold        ctermfg=187   ctermbg=237    cterm=bold
hi WildMenu         guifg=#242424   guibg=#a8c97f   gui=NONE        ctermfg=235   ctermbg=150    cterm=NONE

" ============================================================================
" Popup Menu
" ============================================================================
hi Pmenu            guifg=#e0d4b8   guibg=#2d2d2d   gui=NONE        ctermfg=187   ctermbg=236    cterm=NONE
hi PmenuSel         guifg=#242424   guibg=#ddb870   gui=NONE        ctermfg=235   ctermbg=180    cterm=NONE
hi PmenuSbar        guifg=NONE      guibg=#333333   gui=NONE        ctermfg=NONE  ctermbg=237    cterm=NONE
hi PmenuThumb       guifg=NONE      guibg=#505050   gui=NONE        ctermfg=NONE  ctermbg=241    cterm=NONE

" ============================================================================
" Messages & Diagnostics
" ============================================================================
hi ErrorMsg         guifg=#e8805a   guibg=NONE      gui=bold        ctermfg=209   ctermbg=NONE   cterm=bold
hi WarningMsg       guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi ModeMsg          guifg=#a8c97f   guibg=NONE      gui=bold        ctermfg=150   ctermbg=NONE   cterm=bold
hi MoreMsg          guifg=#a8c97f   guibg=NONE      gui=NONE        ctermfg=150   ctermbg=NONE   cterm=NONE
hi Question         guifg=#8fd4d4   guibg=NONE      gui=NONE        ctermfg=116   ctermbg=NONE   cterm=NONE
hi Title            guifg=#f0a050   guibg=NONE      gui=bold        ctermfg=214   ctermbg=NONE   cterm=bold

" ============================================================================
" Diff
" ============================================================================
hi DiffAdd          guifg=NONE      guibg=#2a3a2a   gui=NONE        ctermfg=NONE  ctermbg=22     cterm=NONE
hi DiffChange       guifg=NONE      guibg=#3a3528   gui=NONE        ctermfg=NONE  ctermbg=58     cterm=NONE
hi DiffDelete       guifg=#e8805a   guibg=#3a2828   gui=NONE        ctermfg=209   ctermbg=52     cterm=NONE
hi DiffText         guifg=NONE      guibg=#4a4530   gui=bold        ctermfg=NONE  ctermbg=58     cterm=bold

" ============================================================================
" Spell
" ============================================================================
hi SpellBad         guifg=NONE      guibg=NONE      gui=undercurl   guisp=#e8805a ctermfg=NONE   ctermbg=NONE   cterm=underline
hi SpellCap         guifg=NONE      guibg=NONE      gui=undercurl   guisp=#8fd4d4 ctermfg=NONE   ctermbg=NONE   cterm=underline
hi SpellRare        guifg=NONE      guibg=NONE      gui=undercurl   guisp=#b897c9 ctermfg=NONE   ctermbg=NONE   cterm=underline
hi SpellLocal       guifg=NONE      guibg=NONE      gui=undercurl   guisp=#a8c97f ctermfg=NONE   ctermbg=NONE   cterm=underline

" ============================================================================
" Syntax Highlighting
" ============================================================================
hi Comment          guifg=#7a8563   guibg=NONE      gui=italic      ctermfg=102   ctermbg=NONE   cterm=NONE

hi Constant         guifg=#f5e0a0   guibg=NONE      gui=NONE        ctermfg=222   ctermbg=NONE   cterm=NONE
hi String           guifg=#a8c97f   guibg=NONE      gui=NONE        ctermfg=150   ctermbg=NONE   cterm=NONE
hi Character        guifg=#a8c97f   guibg=NONE      gui=NONE        ctermfg=150   ctermbg=NONE   cterm=NONE
hi Number           guifg=#e8805a   guibg=NONE      gui=NONE        ctermfg=209   ctermbg=NONE   cterm=NONE
hi Boolean          guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Float            guifg=#e8805a   guibg=NONE      gui=NONE        ctermfg=209   ctermbg=NONE   cterm=NONE

hi Identifier       guifg=#e0d4b8   guibg=NONE      gui=NONE        ctermfg=187   ctermbg=NONE   cterm=NONE
hi Function         guifg=#ddb870   guibg=NONE      gui=NONE        ctermfg=180   ctermbg=NONE   cterm=NONE

hi Statement        guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Conditional      guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Repeat           guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Label            guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Operator         guifg=#e0d4b8   guibg=NONE      gui=NONE        ctermfg=187   ctermbg=NONE   cterm=NONE
hi Keyword          guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Exception        guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE

hi PreProc          guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE
hi Include          guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE
hi Define           guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE
hi Macro            guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE
hi PreCondit        guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE

hi Type             guifg=#8fd4d4   guibg=NONE      gui=NONE        ctermfg=116   ctermbg=NONE   cterm=NONE
hi StorageClass     guifg=#8fd4d4   guibg=NONE      gui=NONE        ctermfg=116   ctermbg=NONE   cterm=NONE
hi Structure        guifg=#8fd4d4   guibg=NONE      gui=NONE        ctermfg=116   ctermbg=NONE   cterm=NONE
hi Typedef          guifg=#8fd4d4   guibg=NONE      gui=NONE        ctermfg=116   ctermbg=NONE   cterm=NONE

hi Special          guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE
hi SpecialChar      guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE
hi Tag              guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi Delimiter        guifg=#e0d4b8   guibg=NONE      gui=NONE        ctermfg=187   ctermbg=NONE   cterm=NONE
hi SpecialComment   guifg=#7a8563   guibg=NONE      gui=bold,italic ctermfg=102   ctermbg=NONE   cterm=bold
hi Debug            guifg=#e8805a   guibg=NONE      gui=NONE        ctermfg=209   ctermbg=NONE   cterm=NONE

hi Underlined       guifg=#8fd4d4   guibg=NONE      gui=underline   ctermfg=116   ctermbg=NONE   cterm=underline
hi Ignore           guifg=#505050   guibg=NONE      gui=NONE        ctermfg=241   ctermbg=NONE   cterm=NONE
hi Error            guifg=#e8805a   guibg=#3a2828   gui=bold        ctermfg=209   ctermbg=52     cterm=bold
hi Todo             guifg=#242424   guibg=#f5e0a0   gui=bold        ctermfg=235   ctermbg=222    cterm=bold

" ============================================================================
" Language-specific
" ============================================================================
" HTML/XML
hi htmlTag          guifg=#7a8563   guibg=NONE      gui=NONE        ctermfg=102   ctermbg=NONE   cterm=NONE
hi htmlEndTag       guifg=#7a8563   guibg=NONE      gui=NONE        ctermfg=102   ctermbg=NONE   cterm=NONE
hi htmlTagName      guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi htmlArg          guifg=#ddb870   guibg=NONE      gui=NONE        ctermfg=180   ctermbg=NONE   cterm=NONE
hi htmlSpecialChar  guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE

" CSS
hi cssClassName     guifg=#ddb870   guibg=NONE      gui=NONE        ctermfg=180   ctermbg=NONE   cterm=NONE
hi cssClassNameDot  guifg=#ddb870   guibg=NONE      gui=NONE        ctermfg=180   ctermbg=NONE   cterm=NONE
hi cssIdentifier    guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi cssBraces        guifg=#e0d4b8   guibg=NONE      gui=NONE        ctermfg=187   ctermbg=NONE   cterm=NONE

" JavaScript
hi javaScriptBraces guifg=#e0d4b8   guibg=NONE      gui=NONE        ctermfg=187   ctermbg=NONE   cterm=NONE
hi javaScriptNumber guifg=#e8805a   guibg=NONE      gui=NONE        ctermfg=209   ctermbg=NONE   cterm=NONE

" Python
hi pythonBuiltin    guifg=#8fd4d4   guibg=NONE      gui=NONE        ctermfg=116   ctermbg=NONE   cterm=NONE
hi pythonException  guifg=#f0a050   guibg=NONE      gui=NONE        ctermfg=214   ctermbg=NONE   cterm=NONE
hi pythonDecorator  guifg=#b897c9   guibg=NONE      gui=NONE        ctermfg=139   ctermbg=NONE   cterm=NONE

" Markdown
hi markdownH1       guifg=#f0a050   guibg=NONE      gui=bold        ctermfg=214   ctermbg=NONE   cterm=bold
hi markdownH2       guifg=#ddb870   guibg=NONE      gui=bold        ctermfg=180   ctermbg=NONE   cterm=bold
hi markdownH3       guifg=#8fd4d4   guibg=NONE      gui=bold        ctermfg=116   ctermbg=NONE   cterm=bold
hi markdownCode     guifg=#a8c97f   guibg=#2a2a2a   gui=NONE        ctermfg=150   ctermbg=236    cterm=NONE
hi markdownCodeBlock guifg=#a8c97f  guibg=#2a2a2a   gui=NONE        ctermfg=150   ctermbg=236    cterm=NONE
hi markdownLink     guifg=#8fd4d4   guibg=NONE      gui=underline   ctermfg=116   ctermbg=NONE   cterm=underline
hi markdownUrl      guifg=#7a8563   guibg=NONE      gui=NONE        ctermfg=102   ctermbg=NONE   cterm=NONE
hi markdownBold     guifg=#f5e0a0   guibg=NONE      gui=bold        ctermfg=222   ctermbg=NONE   cterm=bold
hi markdownItalic   guifg=#f5e0a0   guibg=NONE      gui=italic      ctermfg=222   ctermbg=NONE   cterm=NONE

" Git
hi gitcommitOverflow guifg=#e8805a  guibg=NONE      gui=NONE        ctermfg=209   ctermbg=NONE   cterm=NONE
hi gitcommitSummary guifg=#a8c97f   guibg=NONE      gui=NONE        ctermfg=150   ctermbg=NONE   cterm=NONE

" ============================================================================
" Neovim-specific
" ============================================================================
if has('nvim')
  hi NormalFloat    guifg=#e0d4b8   guibg=#2a2a2a   gui=NONE
  hi FloatBorder    guifg=#505050   guibg=#2a2a2a   gui=NONE
  hi DiagnosticError guifg=#e8805a  guibg=NONE      gui=NONE
  hi DiagnosticWarn guifg=#f0a050   guibg=NONE      gui=NONE
  hi DiagnosticInfo guifg=#8fd4d4   guibg=NONE      gui=NONE
  hi DiagnosticHint guifg=#7a8563   guibg=NONE      gui=NONE

  hi LspInlayHint   guifg=#888888   guibg=NONE      gui=italic      ctermfg=245   ctermbg=NONE   cterm=NONE
endif

" ============================================================================
" Terminal Colors (Neovim)
" ============================================================================
if has('nvim')
  let g:terminal_color_0  = '#242424'
  let g:terminal_color_1  = '#e8805a'
  let g:terminal_color_2  = '#a8c97f'
  let g:terminal_color_3  = '#f0a050'
  let g:terminal_color_4  = '#8fd4d4'
  let g:terminal_color_5  = '#b897c9'
  let g:terminal_color_6  = '#8fd4d4'
  let g:terminal_color_7  = '#e0d4b8'
  let g:terminal_color_8  = '#505050'
  let g:terminal_color_9  = '#e8805a'
  let g:terminal_color_10 = '#a8c97f'
  let g:terminal_color_11 = '#f5e0a0'
  let g:terminal_color_12 = '#8fd4d4'
  let g:terminal_color_13 = '#b897c9'
  let g:terminal_color_14 = '#8fd4d4'
  let g:terminal_color_15 = '#f5e0a0'
endif
