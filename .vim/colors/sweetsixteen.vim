set background=dark
set t_Co=16
hi clear
if exists("syntax_on")
	syntax reset
endif

hi Normal            cterm=none        ctermfg=7 guifg=#5f5f5f guibg=#0f0f0f
hi NonText           cterm=none        ctermfg=0 guifg=#191919
hi Comment           cterm=none        ctermfg=0 ctermbg=6 guifg=#191919 guibg=#008787
hi Identifier        cterm=none        ctermfg=7 guifg=#008787
hi Function          cterm=none        ctermfg=2 guifg=#afd700
hi Constant          cterm=none        ctermfg=1 guifg=#ed3434
hi Statement         cterm=none        ctermfg=4 guifg=#204a87
hi Operator          cterm=bold        ctermfg=6 guifg=#7dc9e3
hi Conditional       cterm=none        ctermfg=4 guifg=#204a87
hi Repeat            cterm=none        ctermfg=4 guifg=#204a87
hi Keyword           cterm=none        ctermfg=3 guifg=#ff9000
hi Exception         cterm=none        ctermfg=3 guifg=#ff9000
hi Number            cterm=none        ctermfg=1 guifg=#ed3434
hi String            cterm=none        ctermfg=1 guifg=#ed3434
hi Float             cterm=none        ctermfg=1                              guifg=#ed3434
hi PreProc           cterm=bold        ctermfg=4                              guifg=#1165e9
hi Include           cterm=none        ctermfg=2                              guifg=#afd700
hi Define            cterm=none        ctermfg=2                              guifg=#afd700
hi Type              cterm=bold        ctermfg=4                              guifg=#1165e9
hi Structure         cterm=none        ctermfg=2                              guifg=#afd700
hi StorageClass      cterm=none        ctermfg=6                              guifg=#008787
hi Typedef           cterm=none        ctermfg=6                              guifg=#008787
hi Special           cterm=none        ctermfg=2                              guifg=#afd700
hi SpecialKey        cterm=none        ctermfg=2                              guifg=#afd700
hi SpecialComment    cterm=none        ctermfg=6                              guifg=#008787
hi Delimiter         cterm=bold        ctermfg=4                              guifg=#1165e9
hi Underlined        cterm=underline   ctermfg=1                              guifg=#ed3434
hi Ignore            cterm=none        ctermfg=1                              guifg=#ed3434
hi Error             cterm=none        ctermbg=7      ctermfg=1 guibg=#5f5f5f guifg=#ed3434
hi Todo              cterm=none        ctermbg=1      ctermfg=0 guibg=#ed3434 guifg=#191919
hi Pmenu             cterm=none        ctermbg=8      ctermfg=2 guibg=#555753 guifg=#afd700
hi PmenuSel          cterm=none        ctermbg=3      ctermfg=8 guibg=#ff9000 guifg=#555753
hi PmenuSbar         cterm=none        ctermbg=none   ctermfg=none
hi PmenuThumb        cterm=none        ctermbg=3      ctermfg=none guibg=#ff9000
hi ErrorMsg          cterm=none        ctermbg=6      ctermfg=0    guibg=#008787 guifg=#191919
hi ModeMsg           cterm=bold        ctermfg=6                   guifg=#7dc9e3
hi Question          cterm=none        ctermfg=1                   guifg=#ed3434
hi Search            cterm=none        ctermbg=5      ctermfg=0    guibg=#af0087 guifg=#191919
hi Visual            cterm=none        ctermbg=3      ctermfg=0    guibg=#ff9000 guifg=#191919
hi Folded            cterm=bold        ctermbg=8      ctermfg=7    guibg=#555753 guifg=#a1a1a1
hi IncSearch         cterm=none        ctermbg=3      ctermfg=0    guibg=#ff9000 guifg=#191919
hi MatchParen        cterm=none        ctermbg=2      ctermfg=0    guibg=#afd700 guifg=#191919
hi Parens            cterm=bold        ctermbg=none   ctermfg=4                  guifg=#1165e9
hi CursorLine        cterm=none        ctermbg=8      ctermfg=none guibg=#191919
hi CursorColumn      cterm=none        ctermbg=8      ctermfg=none guibg=#191919
hi ColorColumn       cterm=none        ctermbg=8      ctermfg=none guibg=#191919
hi LineNr            cterm=none        ctermbg=8      ctermfg=7    guibg=#191919 guifg=#5f5f5f
hi VertSplit         cterm=none        ctermbg=8      ctermfg=8    guibg=#191919 guifg=#191919
hi User1             cterm=none        ctermbg=none   ctermfg=3                  guifg=#ff9000
hi StatusLine        cterm=none        ctermbg=8      ctermfg=6    guibg=#008787 guifg=#191919
hi StatusLineNC      cterm=none        ctermbg=8      ctermfg=8    guibg=#191919 guifg=#191919
hi SpellBad          cterm=none        ctermbg=1      ctermfg=7    guibg=#ed3434 guifg=#5f5f5f
hi SpellCap          cterm=none        ctermbg=1      ctermfg=7    guibg=#ed3434 guifg=#5f5f5f
hi SpellRare         cterm=none        ctermbg=1      ctermfg=7    guibg=#ed3434 guifg=#5f5f5f
hi SpellLocal        cterm=none        ctermbg=1      ctermfg=7    guibg=#ed3434 guifg=#5f5f5f
hi WildMenu          cterm=none        ctermbg=3      ctermfg=8    guibg=#ff9000 guifg=#555753
hi DiffAdd           cterm=none        ctermbg=2      ctermfg=0    guibg=#afd700 guifg=#191919
hi DiffChange        cterm=bold        ctermbg=4      ctermfg=8    guibg=#204a87 guifg=#555753
hi DiffText          cterm=bold        ctermbg=4      ctermfg=1    guibg=#204a87 guifg=#ed3434
hi DiffDelete        cterm=bold        ctermbg=1      ctermfg=0    guibg=#ed3434 guifg=#191919
hi TabLineSel        cterm=none        ctermbg=8      ctermfg=6    guibg=#191919 guifg=#008787
hi TabLineFill       cterm=none        ctermbg=8      ctermfg=none guibg=#191919
hi TabLine           cterm=none        ctermbg=8      ctermfg=7    guibg=#191919 guifg=#555753
hi treeDir           cterm=bold                       ctermfg=4                  guifg=#1165e9
hi MBENormal                           ctermbg=none   ctermfg=7                  guifg=#5f5f5f
hi MBEChanged                          ctermbg=none   ctermfg=7                  guifg=#5f5f5f
hi MBEVisibleNormal                    ctermbg=none   ctermfg=6                  guifg=#008787
hi MBEVisibleChanged                   ctermbg=none   ctermfg=6                  guifg=#008787
hi MBEVisibleActive                    ctermbg=none   ctermfg=6                  guifg=#008787
hi MBEVisibleChangedActive             ctermbg=none   ctermfg=6                  guifg=#008787
hi Cursor                                                          guibg=#dd8000 guifg=#000000
