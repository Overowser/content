#include stat.ahk
#include entrer_enclos.ahk

Etape31()
{
	;entrer enclos
	entrer_enclos()
	
	;check si besoin de maturité et monte maturité
	stat("b_maturité","b","missiz")
	
	return 32
}