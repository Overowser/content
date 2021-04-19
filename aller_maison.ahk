aller_maison()
{
	click, 1253,1061
	sleep, 200
	sendinput, !&
	sleep, 200
	sendinput, {é}
	
	pixelsearch,,, 1128,182, 1128,182,0x0081FC,5
	while (errorlevel!=0)
	{
		sleep, 100
		pixelsearch,,, 1128,182, 1128,182,0x0081FC,5
	}
	click, 1314,456
	pixelsearch,,, 748,230, 748,230,0x2C3237,5
	while (errorlevel!=0)
	{
		sleep, 200
		click, 1314,456
		pixelsearch,,, 748,230, 748,230,0x2C3237,5
	}
	sleep, 50
	
	click, 920,170 ;HDV
	pixelsearch,,, 947,171, 947,171,0x62656A,5
	while (errorlevel!=0)
	{
		click, 920,170 
		pixelsearch,,, 947,171, 947,171,0x62656A,5
		sleep, 150
	}
	sleep, 200
	
	mouseclick,left, 948,361,2 ;consommable
	;pixelsearch,,,1211,358,1211,358,0x737679,5 ;test si consommable est cliché
	;a:=errorlevel
	pixelsearch,,, 605,31, 605,31,0x069AFF,5 ;test si toujours dans l'autre map
	b:=errorlevel
	T=0
	while (b=0)
	{
		T+=100
		;pixelsearch,,,1211,358,1211,358,0x737679,5
		;a:=errorlevel
		pixelsearch,,, 605,31, 605,31,0x069AFF,5
		b:=errorlevel
		sleep, 100
		if (T>3000)
		{
			mouseclick,left, 948,361,2
			T=0
		}
	}
	
	pixelsearch,,, 361,656, 361,656,0x000000,5
	while (errorlevel=!0)
	{
		sleep,1
		pixelsearch,,, 361,656, 361,656,0x000000,5
	}
	
	pixelsearch,,, 361,656, 361,656,0x000000,5
	while (errorlevel=0) ;chargement de la map
	{
		sleep,10
		pixelsearch,,, 361,656, 361,656,0x000000,5
	}
	sleep, 200 ;chargement elements de la map 
	click, 1440,0 ; map en haut
	T=0
	pixelsearch,,,1536,917,1536,917,0x000000,5
	while (errorlevel!=0)
	{
		sleep, 10
		T:=T+10
		pixelsearch,,, 1536,917,1536,917,0x000000,5
		if (T>4000)
		{
			T=0
			click, 1440,0
		}
	}
	while (errorlevel=0)
	{
		sleep,100
		pixelsearch,,, 1536,917,1536,917,0x000000,5
	}
	sleep, 200
	
	click, 1438,403 ;maison
	sleep, 200
	pixelsearch,,, 1495,416, 1495,416,0x33373A,5
	if (errorlevel=0)
	{
		click, 1496,444
		sleep, 200
	}
	pixelsearch,,,1313,102,1313,102,0x1C323D,5
	T=0
	while (errorlevel=0)
	{
		sleep, 100
		T:=T+100
		if (T>5000)
		{
			click, 1438,403 ;maison
			sleep, 200
			pixelsearch,,, 1495,416, 1495,416,0x33373A,5
			if (errorlevel=0)
			{
				click, 1496,444
				sleep, 200
			}
			T=0
		}
		pixelsearch,,,1313,102,1313,102,0x1C323D,5
	}
	pixelsearch,,, 1313, 102, 1313, 102,0x000000,5
	while (errorlevel!=0)
	{
		sleep, 100
		pixelsearch,,, 1313, 102, 1313, 102,0x000000,5
	}
	pixelsearch,,, 876,439, 876,439,0x000000,5
	while (errorlevel=0)
	{
		sleep, 100
		pixelsearch,,, 876,439, 876,439,0x000000,5
	}
	sleep, 200
	return
}