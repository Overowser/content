#include etape11.ahk
#include etape12.ahk
#include etape13.ahk
#include etape14.ahk

#include etape21.ahk
#include etape22.ahk

#include etape31.ahk
#include etape32.ahk

#include etape41.ahk
#include etape42.ahk

#include etape51.ahk
#include etape52.ahk
#include etape53.ahk



Gui +Resize +MaximizeBox +caption
gui,	Add, Text,,Quel etape faire?

Gui, Add, DropDownList, vetape, 11|12|13|14|21|22|31|32|41|42|51|52|53

gui, add, button, gaccount, ok
gui, show
return

account:
Gui, Submit, NoHide
;msgbox, %account%
WinActivate, ahk_exe C:\Users\ben-g\AppData\Local\Ankama\zaap\dofus\dofus.exe
etape%etape%()
return

F1::
pause