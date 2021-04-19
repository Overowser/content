#include select_filtre.ahk
#include auto.ahk
#include entrer_enclos.ahk
#include etable_to_inv.ahk
#include inv_to_etable.ahk
#include clear_filters_etable.ahk

male_to_neg()
{
	entrer_enclos()
	select_filtre("etable","female","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 female.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	
	select_filtre("etable","ser_pos","s")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 ser_pos.png
	
	if (errorlevel=0)
	{
		auto("ser_pos","s", "sylargh")
	}
	else
	{
		inv_to_etable()
		clear_filters_etable()
	}
	return
}
