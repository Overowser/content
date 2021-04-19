#include select_filtre.ahk
#include ser_auto.ahk
#include etable_to_inv.ahk
#include inv_to_etable.ahk
#include enclos_to_etable.ahk
#include clear_filters_etable.ahk

mal_ser_moy_to_400()
{
	select_filtre("etable","female","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 female.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	
	clear_filters_etable()
	
	mousemove,648,189
	sleep, 50
	sendinput, {WheelUp 125}
	sleep, 100
	
	ser_auto("400")
	
	enclos_to_etable()
	
	inv_to_etable()
	
	return
}