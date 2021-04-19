#include Select_filtre.ahk
#include etable_to_inv.ahk

fem_etable_to_inv()
{
	Select_filtre("etable", "female","m")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 female.png
	if (errorlevel=0)
	{
		etable_to_inv()
	}
	return
}
