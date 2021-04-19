#include select_filtre.ahk
#include clear_filters_etable.ahk
#include entrer_enclos.ahk
#include etable_to_inv.ahk

moy_etable_inv()
{
	entrer_enclos()
	
	select_filtre("etable","ser_moy","s")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 Ser_moy.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	sleep, 100
	clear_filters_etable()
	sleep, 100
	return
}