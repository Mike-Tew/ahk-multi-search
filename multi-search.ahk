#SingleInstance, force

^+Enter::
Send, ^a
Send, ^c
word_array := StrSplit(Clipboard, ": ")
search_term := word_array[2]
search_engine := StrSplit(word_array[1], A_Space)
Send, ^w
for index, element in search_engine
{
  Send, % "^t" element A_Space search_term
  Send, {Enter}
}
Return
