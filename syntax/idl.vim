" Vim syntax file

let b:current_sytax="idl"
syn keyword syntaxElementKeyword and from is of as with reaches has to strictly
syn keyword syntaxItemKeyword phi node argument icmp add first second
syn keyword syntaxConsts phi node argument instruction control flow
syn keyword structureKeyword Constraint End inherits
syn keyword types integer unused same
syn keyword exportKeyword Export

syn region constraintBlock start="Constraint" end="End"
syn region varBlock start="{" end="}"

hi def link syntaxElementKeyword Label
hi def link syntaxConsts Constant
hi def link structureKeyword StorageClass
hi def link exportKeyword Include
hi def link types Type
