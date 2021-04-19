#include Select_filtre.ahk
#include etable_to_inv.ahk


male_etable_to_inv()
{
	Select_filtre("etable", "male","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 male.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	return
}