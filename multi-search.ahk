^i::
Send, ^a
Send, ^c
word_array := StrSplit(Clipboard, ": ")
for index, element in word_array
{
  ; MsgBox, % element
  Send, % element
  Sleep, 100
}
; MsgBox, % word_array[1] "|" word_array[2]
; Send, %word_array%
Return