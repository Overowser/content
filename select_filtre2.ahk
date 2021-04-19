select_filtre2(byref filtre, byref lettre)
{
	
	mouseclick,left, 394,148,4 ;enlever 2ème et 3ème filtre s'ils existent
	
	click, 357,114 ;ajouter 2ème filtre
	pixelsearch,,,393,116,393,116,0x2C3237,2
	t=0
	while (errorlevel=0)
	{
		sleep, 10
		T+=10
		pixelsearch,,,393,116,393,116,0x2C3237,2
		if (t>200)
		{
			t=0
			click, 357,114 ;ajouter 2ème filtre
		}
	}
	
	sleep, 200
	
	click, 530,150
	sleep, 100
	
	a:=0
	ImageSearch, x, y, 378,130,713,174,*5 %filtre%.png
	while(ErrorLevel!=0 and a!=20)
	{
		a++
		SendInput, %lettre%
		sleep, 400
		ImageSearch, x, y,378,130,713,174,*5 %filtre%.png
	}
	
	click, 530,150
	sleep, 100
	
	return %a%
}