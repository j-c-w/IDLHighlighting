" Vim syntax file

let b:current_sytax="idl"
syn match syntaxElementKeyword "spans[ \t\n]\+block[ \t\n]\+to"
syn match syntaxElementKeyword "if\([ \t\n]\+not[ \t\n]\+otherwise[ \t\n]\+specified\)\?"
syn match syntaxElementKeyword "is\(\([ \t\n]\+the[ \t\n]\+same[ \t\n]\+as\)\|\([ \t\n]\+not[ \t\n]\+the[ \t\n]\+same[ \t\n]\+as\)\|\([ \t\n]\+integer[ \t\n]\+zero\)\|\([ \t\n]\+floating[ \t\n]\+point[ \t\n]\+zero\)\)\?"
syn keyword syntaxElementKeyword for all some or and from of with has strictly at then else endif
syn match syntaxElementKeyword "as"
syn match syntaxElementKeyword "to"
syn keyword syntaxItemKeyword first second third fourth
syn match syntaxConsts "dependence[ \t\n]\+edge"
syn match syntaxConsts "reaches[ \t\n]\+phi[ \t\n]\+node"
syn match syntaxConsts "data[ \t\n]\+flow"
syn match syntaxConsts "successor"
syn match syntaxConsts "control[ \t\n]\+dominance"
syn match syntaxConsts "control[ \t\n]\+flow\(\([ \t\n]\+postdominates\)\|\([ \t\n]\+dominates\)\)\?"
syn keyword syntaxConsts argument instruction unused
syn match syntaxConsts "same"
syn keyword structureKeyword Constraint nextgroup=structName End inherits nextgroup=structName collect skipWhite
syn match structName '\i\+' contained
syn keyword types float vector pointer integer preexecution
syn match types "a[ \t\n]\+constant" "an[ \t\n]\+argument"
syn match types "numeric[ \t\n]\+constant"
syn keyword exportKeyword Export Import nextgroup filename
syn match fileName '\i\+' contained
syn match comment "\v#.*$"

syn region constraintBlock start="Constraint" end="End"
syn region varBlock start="{" end="}"

hi def link syntaxElementKeyword Label
hi def link syntaxConsts Constant
hi def link structureKeyword StorageClass
hi def link exportKeyword Include
hi def link structName Include
hi def link types Type
hi def link varBlock Identifier
hi def link syntaxItemKeyword Constant
hi def link comment Comment
hi def link fileName Constant
