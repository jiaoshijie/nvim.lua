syn region markdownLinkText matchgroup=markdownLinkTextDelimiter
      \ start="!\=\[\%(\%(\_[^][]\|\[\_[^][]*\]\)*]\%( \=[[(]\)\)\@="
      \ end="\]\%( \=[[(]\)\@="
      \ nextgroup=markdownLink,markdownId skipwhite
      \ contains=@markdownInline,markdownLineStart
      \ concealends

syn region markdownLink matchgroup=markdownLinkDelimiter
      \ start="(" end=")"
      \ contains=markdownUrl keepend contained
      \ conceal

" TODO
" syn region markdownId matchgroup=markdownIdDelimiter
"       \ start="\[" end="\]"
"       \ keepend contained
"       \ conceal
