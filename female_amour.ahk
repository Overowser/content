#include select_filtre.ahk
#include auto.ahk
#include inv_to_etable.ahk
#include clear_filters_etable.ahk
#include etable_to_inv.ahk
#include entrer_enclos.ahk

female_amour()
{
	entrer_enclos()
	
	select_filtre("etable","male","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 male.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	
	select_filtre("etable","b_amour","b")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 b_amour.png
	
	if (errorlevel=0)
	{
		auto("b_amour","b", "nidas")
	}
	else
	{
		inv_to_etable()
		clear_filters_etable()
	}
	return
}
