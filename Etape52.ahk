#include entrer_enclos.ahk
#include male_endurance.ahk
#include vider_enclos.ahk
#include sortir_enclos.ahk

Etape52()
{
	
	;check si besoin d'energie et monte energie
	male_endurance()
	
	sortir_enclos()
	
	vider_enclos()
	
	return 6
}