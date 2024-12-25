#Requires AutoHotkey v2.0
; -- moving cursor -- 
keysFunc_moveLeft(i := 1) {
    Send("{Left " i "}")
    return false
}

keysFunc_moveRight(i := 1) {
    Send("{Right " i "}")
    return false
}

keysFunc_moveUp(i := 1) {
    Send("{Up " i "}")
    return false
}

keysFunc_moveDown(i := 1) {
    Send("{Down " i "}")
    return false
}

keysFunc_moveLeft_word() {
    Send("^{Left}")
    return false
}

keysFunc_moveRight_word() {
    Send("^{Right}")
    return false
}

keysFunc_moveToLineStart() {
    Send("{Home}")
    return false
}

keysFunc_moveToLineEnd() {
    Send("{End}")
    return false
}

keysFunc_enter() {
    Send("{Enter}")
    return false
}

; -- deleting --

keysFunc_backSpace() {
    Send("{Backspace}")
    return false
}

keysFunc_delete() {
    Send("{Delete}")
    return false
}

keysFunc_backSpace_word() {
    Send("^{Backspace}")
    return false
}

keysFunc_delete_word() {
    Send("^{Delete}")
    return false
}

keysFunc_removeLine() {
    Send("{End}")
    Send("+{Home}{Backspace}")
    return false
}

; -- selecting --

keysFunc_selectUp(i := 1) {
    ; repeat i times
    Send("+{Up " i "}")
    return false
}

keysFunc_selectDown(i := 1) {
    Send("+{Down " i "}")
    return false
}

keysFunc_selectLeft(i := 1) {
    Send("+{Left " i "}")
    return false
}

keysFunc_selectRight(i := 1) {
    Send("+{Right " i "}")
    return false
}

keysFunc_selectLeft_word() {
    Send("+^{Left}")
    return false
}

keysFunc_selectRight_word() {
    Send("+^{Right}")
    return false
}
keysFunc_selectToLineStart() {
    Send("+{Home}")
    return false
}

keysFunc_selectToLineEnd() {
    Send("+{End}")
    return false
}
