
Select_filtre(byref endroit,byref filtre,byref lettre)
{
	if (endroit="etable")
	{
		click, 550,115
		sleep, 100
	}
	else
	{
		click, 501,632
		sleep, 100
	}
	
	if (endroit="etable")
	{	
		a:=0
		ImageSearch, x, y, 0,0, 750, 150,*5 %filtre%.png
		while(ErrorLevel!=0 and a!=20)
		{
			a++
			SendInput, %lettre%
			sleep, 400
			ImageSearch, x, y, 0,0, 750, 150,*5 %filtre%.png
		}
	}
	else 
	{
		ImageSearch, x, y, 398,610,666,643,*5 %filtre%.png
		while(ErrorLevel!=0 and a!=20)
		{
			a++
			SendInput, %lettre%
			sleep, 400
			ImageSearch, x, y, 398,610,666,643,*5 %filtre%.png
		}
	}
	
	if (endroit="etable")
	{
		click, 550,115
		sleep, 100
	}
	else
	{
		click, 501,632
		sleep, 100
	}
	
	return %a%
}
