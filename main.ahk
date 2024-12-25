#Requires AutoHotkey v2.0
#Include keysFunc.ahk


HandleCapsLockHotkey(key, funcName) {
    ; Check if LAlt is pressed
    if (GetKeyState("LAlt", "P")) {
        switch key {
            ; moving
            case "e": return keysFunc_moveUp(5)
            case "d": return keysFunc_moveDown(5)
            case "s": return keysFunc_moveLeft_word()
            case "f": return keysFunc_moveRight_word()
            ; deleting
            case "w": return keysFunc_backSpace_word()
            case "r": return keysFunc_delete_word()
            ; selecting
            case "j": return keysFunc_selectLeft_word()
            case "l": return keysFunc_selectRight_word()

        }
    } else {
        %funcName%()
    }
    return false
}

; -- moving --
~CapsLock & s:: HandleCapsLockHotkey("s", "keysFunc_moveLeft")
~CapsLock & d:: HandleCapsLockHotkey("d", "keysFunc_moveDown")
~CapsLock & f:: HandleCapsLockHotkey("f", "keysFunc_moveRight")
~CapsLock & e:: HandleCapsLockHotkey("e", "keysFunc_moveUp")

~CapsLock & a:: HandleCapsLockHotkey("a", "keysFunc_moveToLineStart")
~CapsLock & g:: HandleCapsLockHotkey("g", "keysFunc_moveToLineEnd")
~CapsLock & Space:: HandleCapsLockHotkey("Space", "keysFunc_enter")

; -- deleting ---
~CapsLock & w:: HandleCapsLockHotkey("w", "keysFunc_backSpace")
~CapsLock & r:: HandleCapsLockHotkey("r", "keysFunc_delete")
~CapsLock & BackSpace:: HandleCapsLockHotkey("BackSpace", "keysFunc_removeLine")

; -- selecting ---
~CapsLock & i:: HandleCapsLockHotkey("i", "keysFunc_selectUp")
~CapsLock & k:: HandleCapsLockHotkey("k", "keysFunc_selectDown")
~CapsLock & j:: HandleCapsLockHotkey("j", "keysFunc_selectLeft")
~CapsLock & l:: HandleCapsLockHotkey("l", "keysFunc_selectRight")
~CapsLock & h:: HandleCapsLockHotkey("h", "keysFunc_selectToLineStart") 
~CapsLock & `;:: HandleCapsLockHotkey("`;", "keysFunc_selectToLineEnd")