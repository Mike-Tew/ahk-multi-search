#SingleInstance, force

^+Enter::
Send, ^a
Send, ^c
word_array := StrSplit(Clipboard, ": ")
search_term := word_array[2]
search_engine := StrSplit(word_array[1], A_Space)
for index, element in search_engine
{
  if (index > 1)
  {
    Send, ^t
  }
  Sleep, 50
  Send, % element A_Space search_term
  Sleep, 20
  Send, {Enter}
}
Return
