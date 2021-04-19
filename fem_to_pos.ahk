#include select_filtre.ahk
#include auto.ahk
#include entrer_enclos.ahk
#include etable_to_inv.ahk
#include inv_to_etable.ahk
#include clear_filters_etable.ahk

fem_to_pos()
{
	entrer_enclos()
	select_filtre("etable","male","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 male.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	
	select_filtre("etable","ser_neg","s")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 ser_neg.png
	
	if (errorlevel=0)
	{
		auto("ser_neg","s", "nileza")
	}
	else
	{
		inv_to_etable()
		clear_filters_etable()
	}
	return
}
