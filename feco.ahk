#include enclos_to_etable.ahk
#include etable_to_enclos.ahk
#include enclos_to_inv.ahk
#include inv_to_enclos.ahk


pause
loop
{
	etable_to_enclos()
	;inv_to_enclos()
	sleep, 600
	sendinput, {Tab}
	sleep, 1300
	enclos_to_etable()
	;enclos_to_inv()
}

F5::
pause