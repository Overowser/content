#include stat.ahk
#include entrer_enclos.ahk
#include fem_etable_to_inv.ahk

Etape21()
{
	;entrer dans l'enclos
	entrer_enclos()
	
	
	;mets filtre monture femelle puis passe à l'inventaire les montures qu'il trouve
	fem_etable_to_inv()
	
	
	;monter amour aux montures à l'étable 
	stat("b_amour", "b", "nidas")
	
	return 22
}