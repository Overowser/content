#include select_filtre.ahk
#include auto.ahk
#include inv_to_etable.ahk
#include clear_filters_etable.ahk
#include etable_to_inv.ahk
#include entrer_enclos.ahk

male_endurance()
{
	entrer_enclos()
	
	select_filtre("etable","female","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 female.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	
	select_filtre("etable","b_endurance","b")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 b_endurance.png
	
	if (errorlevel=0)
	{
		auto("b_endurance","b", "klime")
	}
	else
	{
		inv_to_etable()
		clear_filters_etable()
	}
	return
}
