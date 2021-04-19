aller_enclos()
{
	pixelsearch,,,599,422,599,422,0x000000
	if (errorlevel!=0)
	{
		send, !{&}
		sleep, 200
		sendinput, {"}
		pixelsearch,,, 573,112, 573,112,0x4D5358,5
		T=0
		while (errorlevel!=0)
		{
			sleep, 10
			T:=T+10
			pixelsearch,,, 573,112, 573,112,0x4D5358,5
			if (T>2000)
			{
				T=0
				sendinput, {"}
			}
		}
		sleep, 200
		click, 769,467
		pixelsearch,,, 769,467, 769,467,0x666C6E,5
		while (errorlevel!=0)
		{
			click, 769,467
			sleep, 100
			pixelsearch,,, 769,467, 769,467,0x666C6E,5
		}
		click, 1420,422
		sleep, 200
		while (errorlevel=0)
		{
			click, 1420,422
			sleep, 100
			pixelsearch,,, 769,467, 769,467,0x666C6E,5
		}
	}
	return
}