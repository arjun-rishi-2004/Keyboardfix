; Suppress unintended output for each key and only send the intended key

~m::
Input, SingleKey, L1 T0.1 ; Wait for a brief moment to capture the next key press
If (SingleKey = "c")
{
    SendInput, {BS} ; Send a backspace to remove the unwanted character
}
SendInput, m
Return

~j::
Input, SingleKey, L1 T0.1
If (SingleKey = "d")
{
    SendInput, {BS}
}
SendInput, j
Return

~u::
Input, SingleKey, L1 T0.1
If (SingleKey = "e")
{
    SendInput, {BS}
}
SendInput, u
Return

~7::
Input, SingleKey, L1 T0.1
If (SingleKey = "3")
{
    SendInput, {BS}
}
SendInput, 7
Return



~y::
Input, SingleKey, L1 T0.1
If (SingleKey = "{F3}")
{
    SendInput, {BS}
}
If (SingleKey = "y")
{
    Return ; Prevent double typing of 'y'
}

Return

~6::
Input, SingleKey, L1 T0.1
If (SingleKey = "{F2}")
{
    SendInput, {BS}
}
If (SingleKey = "6")
{
    Return ; Prevent double typing of '6'
}

Return

; Block the function keys directly
; Block the function keys from being triggered by other keys
~*F4::
If (A_PriorKey != "F4")
{
    Return
}
Return

~F3::Return
~F2::Return
