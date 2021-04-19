#include sortir_enclos.ahk
#include entrer_enclos.ahk
#include select_filtre.ahk
#include vider_enclos.ahk

Etape53()
{
	sortir_enclos()
	
	;vider enclos
	vider_enclos()
	
	mouseclick, left, 1786,557, 2
	sleep, 400
	
	;bouger mangeoire
	click, 1260,443
	sleep, 200
	click, 1324,485
	sleep, 200
	click, 1120,464
	sleep, 200
	
	;entrer inventaire
	pixelsearch,,, 919,84, 919,84,0x4D5358,5
	if (color!=0)
	{
		sendinput, {i}
		T=0
		pixelsearch,,, 919,84, 919,84,0x4D5358,5
		while (errorlevel!=0)
		{
			sleep, 10
			pixelsearch,,,919,84, 919,84,0x4D5358,5
			T:=T+10
			if (T>3000)
			{
				sendinput, {i}
				T=0
			}
		}
	}
	
	MouseClickDrag, left, 1286, 217, 852, 987, 10
	sleep, 200
	Mouseclick, left, 1584,83,2
	sleep, 200
	sendinput, {&}
	sleep, 200
	click, 1266,448
	sleep, 200
	
	entrer_enclos()
	
	select_filtre("etable","feconde","m")
	
	;click nom
	mouseclick,left, 511,156,3
	
	ImageSearch,,, 0,0, 750, 150,*5 feconde.png
	while (errorlevel=0)
	{
		
		click, 736, 112
		pixelsearch,,, 771,141,771,141,0x2F2F2F,5
		T2=0
		while (errorlevel!=0) 
		{
			T2:=T2+10
			sleep, 10
			pixelsearch,,, 771,141,771,141,0x2F2F2F,5
			if (T2>1000)
			{
				click, 736,112
				T2=1
			}
		}
		click, 833, 133
		sendInput, {Tab}
		sleep, 800
		StartTime := A_TickCount
		
		click, 738,625
		pixelsearch,,,771,652,771,652,0x2F2F2F,5
		while (errorlevel!=0) 
		{
			sleep, 10 ;*[Etape61]
			T2:=T2+10
			pixelsearch,,,771,652,771,652,0x2F2F2F,5
			if (T2>2000)
			{
				click, 738,625
				T2=1
			}
		}
		click, 829, 641
		sleep, 100
		Timeleft:= 1200-(A_TickCount - StartTime)
		if(Timeleft>0)
		{
			sleep, %Timeleft%	
		}		
		
		T:=T+(A_tickcount-T1)
		ImageSearch, x, y, 0,0, 750, 150,*5 feconde.png
	}
	
	sortir_enclos()
	
	click, 1260,443
	sleep, 200
	click, 1303,461
	sleep, 200
	click, 1122,467
	sleep, 200
	click, 1178,510
	sleep, 200
	click, 1265,436
	sleep, 200
	
	entrer_enclos()
	
	select_filtre("etable","sterile","m")
	
	imagesearch,,, 0,0, 750, 150,*5 sterile.png
	if (errorlevel=0)
	{
		return 7
	}
	else
	{
		return 6
	}
}