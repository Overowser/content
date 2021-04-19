#include stat.ahk
#include entrer_enclos.ahk

Etape32()
{
	;entrer dans l'enclos
	entrer_enclos()
	
	;check si besoin d'energie et monte energie
	stat("b_energie","b","korri")
	
	return 41
}