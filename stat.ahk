#include select_filtre.ahk
#include auto.ahk
#include inv_to_etable.ahk

stat(byref filtre,byref lettre,byref objet)
{
	select_filtre("etable",filtre,lettre)
	
	ImageSearch, x, y, 0,0, 750, 150,*5 %filtre%.png
	
	if (errorlevel=0)
	{
		auto(filtre,lettre , objet)
	}
	else
	{
		inv_to_etable()
	}
	return
}