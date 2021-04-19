#include stat.ahk
#include objet.ahk
#include entrer_enclos.ahk
#include male_etable_to_inv.ahk
#include inv_to_etable.ahk

Etape22()
{
	;entrer dans l'enclos
	entrer_enclos()
	
	
	;mets filtre monture male puis passe à l'inventaire les montures qu'il trouve
	male_etable_to_inv()
	
	
	;monter endurance aux montures à l'etable
	stat("b_endurance", "b", "klime")
	
	
	return 23
}