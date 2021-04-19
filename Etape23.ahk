#include entrer_enclos.ahk
#include select_filtre.ahk

Etape23()
{
	;entrer enclos
	entrer_enclos()
	
	select_filtre("etable","b_maturité","b")
	
	ImageSearch, x, y, 0,0, 750, 150,*5 b_maturité.png
	
	if (errorlevel=0)
	{
		return 31
	}
	else
	{
		return 32
	}
}