#include change_account.ahk
#include entrer_enclos.ahk
#include enclos_to_etable.ahk
#include sortir_enclos.ahk
#include aller_enclos.ahk
#include inv_to_etable.ahk

prep_compte(byref Nom)
{
	change_account(Nom)
	aller_enclos()
	entrer_enclos()
	enclos_to_etable()
	inv_to_etable()
	sortir_enclos()
	return
}
