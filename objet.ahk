#include aller_maison.ahk
#include vider_enclos.ahk
#include sortir_enclos.ahk

objet(byref objet)
{
	;sortir de l'enclos 
	sortir_enclos()
	
	;vider enclos d'objet d'elevage
	vider_enclos()
	
	;enlever probleme inventaire
	mouseclick, left, 1786,557, 2
	
	
	BG:="0x404246"
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
	
	sleep, 200
	pixelsearch,,, 1436,115, 1436,115,0x212122,5
	while (errorlevel!=0)
	{
		pixelsearch,,, 1436,115, 1436,115,0x212122,5
		click,1429,120
		sleep, 50
	}
	sleep, 50
	click,1349,836
	sleep, 200
	sendinput, %objet%
	sleep,1000
	c:=0 ; nombre de %objet%!=0
	pixelsearch,,, 1547,223, 1547,223,BG,5
	if (errorlevel!=0) ;more than 5 %objet% inventaire avec 1 0/ 
	{
		c:=4
	}
	else
	{
		pixelsearch,,, 1483,223, 1483,223,BG,5 ;case 4
		if (errorlevel!=0) ;more than 4 %objet% inventaire avec 1 0/ 
		{
			c:=3
		}
		else
		{
			pixelsearch,,, 1419,223,1419,223,BG,5 ;case 3
			if (errorlevel!=0) ;more than 3 %objet% inventaire avec 1 0/ 
			{
				c:=2
			}
			else
			{	
				pixelsearch,,, 1355,223,1355,223,BG,5 ;case 2
				if (errorlevel!=0) ;more than 2 %objet% inventaire avec 1 0/ 
				{
					c:=1
				}
			}
		}
	}
	n:=0
	if (c=4)	
	{
		n:=4
	}
	if (n<4 and c>0)
	{	
		Imagesearch, x,y, 1254,170,1275,200,*Trans0x3F48CC 4.png ;case1
		if (errorlevel=0)
		{
			n:=4
		}
		else
		{
			Imagesearch, x,y, 1254,170,1275,200,*Trans0xED1C24 3.png ;case1
			if (errorlevel=0)
			{
				n+=2
			}
			else
			{	
				Imagesearch, x,y, 1254,170,1275,200,*Trans0x3F48CC 2.png ;case1
				if (errorlevel=0)
				{
					n+=1
				}
			}
		}	
	}
	
	if (n<4 and c>1)
	{	
		Imagesearch, x,y, 1311,170,1340,200,*Trans0x3F48CC 4.png ;case1
		if (errorlevel=0)
		{
			n:=4
		}
		else
		{
			Imagesearch, x,y, 1311,170,1340,200,*Trans0xED1C24 3.png ;case1
			if (errorlevel=0)
			{
				n+=2
			}
			else
			{	
				Imagesearch, x,y, 1311,170,1340,200,*Trans0x3F48CC 2.png ;case1
				if (errorlevel=0)
				{
					n+=1
				}
			}
		}	
	}
	
	
	if (n<4 and c>2)
	{	
		Imagesearch, x,y, 1386,170,1400,200,*Trans0x3F48CC 4.png ;case1
		if (errorlevel=0)
		{
			n:=4
		}
		else
		{
			Imagesearch, x,y, 1386,170,1400,200,*Trans0xED1C24 3.png ;case1
			if (errorlevel=0)
			{
				n+=2
			}
			else
			{	
				Imagesearch, x,y, 1386,170,1400,200,*Trans0x3F48CC 2.png ;case1
				if (errorlevel=0)
				{
					n+=1
				}
			}
		}	
	}
	
	n:=n+c
	
	if (n<4)
	{	
		click, 1585,74
		sleep, 200
		
		aller_maison()
		
		click, 1201,456 ;coffre
		sleep, 200
		pixelsearch,,, 1273,471, 1273,471,0x36393D,5
		if (errorlevel=0)
		{
			click, 1241,500
			sleep, 100
		}
		pixelsearch,,,560,824,560,824,0x343638,5
		T=0
		while (errorlevel!=0)
		{
			sleep, 100
			T:=T+100
			if(T>5000)
			{
				T=0
				click, 1201,456 ;coffre
				sleep, 200
				pixelsearch,,, 1273,471, 1273,471,0x36393D,5
				if (errorlevel=0)
				{
					click, 1241,500
					sleep, 100
				}
			}
			pixelsearch,,,560,824,560,824,0x343638,5
		}
		click, 450,850 ;barre recherche
		send, %objet%
		sleep, 200
		MouseClickDrag, left, 355,215,1325,230,10 ; %objet% to inventaire
		Sleep, 300
		m:=4-n
		sendinput, %m%
		sleep, 400
		sendinput, {enter}
		sleep, 300
		sendinput, {escape}
		sleep, 200
		;revenir à l'enclos
		sendinput, {"}
		pixelsearch,,, 573,112, 573,112,0x4D5358,5
		while (errorlevel!=0)
		{
			sleep, 10
			pixelsearch,,, 573,112, 573,112,0x4D5358,5
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
		
		;sendInput, {i}
		;sleep, 2000
		
		;test si arrivé à la map
		pixelsearch,,, 815,162,815,162,0x171741,5
		while (errorlevel!=0)
		{
			sleep, 100
			pixelsearch,,, 815,162,815,162,0x171741,5
		}
		
		;test si la map a chargé ou pas encore 
		pixelsearch,,,1169,397,1169,397, 0x7FA4F8
		while (errorlevel=0)
		{
			sleep, 100
			pixelsearch,,,1169,397,1169,397, 0x7FA4F8
		}
		sleep, 100
		
		;entrer dans l'inventaire
		sendinput, {i}
		T=0
		pixelsearch,,, 919,84, 919,84,0x4D5358,5
		while (errorlevel!=0)
		{
			sleep, 10
			pixelsearch,,, 919,84, 919,84,0x4D5358,5
			T:=T+10
			if (T>3000)
			{
				sendinput, {i}
				T=0
			}
		}
		
		click,1429,120
		sleep, 200
		click,1349,836
		sleep, 200
		sendinput, %objet%
		sleep,2000
		
		
		c:=0 ; nombre de %objet%!=0
		pixelsearch,,, 1547,223, 1547,223,BG,5
		if (errorlevel!=0) ;more than 5 %objet% inventaire avec 1 0/ 
		{
			c:=4
		}
		else
		{
			pixelsearch,,, 1483,223, 1483,223,BG,5 ;case 4
			if (errorlevel!=0) ;more than 4 %objet% inventaire avec 1 0/ 
			{
				c:=3
			}
			else
			{
				pixelsearch,,, 1419,223, 1419,223,BG,5 ;case 3
				if (errorlevel!=0) ;more than 3 %objet% inventaire avec 1 0/ 
				{
					c:=2
				}
				else
				{	
					pixelsearch,,, 1355,223, 1355,223,BG,5 ;case 2
					if (errorlevel!=0) ;more than 2 %objet% inventaire avec 1 0/ 
					{
						c:=1
					}
				}
			}
		}
	}
	
	sleep, 200
	click, 900, 800
	sleep, 200
	send, !'
	sleep, 200
	if (c=4)
	{
		MouseClickDrag, left, 1290,205,845,985,10
		sleep, 300
		MouseClickDrag, left, 1355,215,895,990,10
		sleep, 300
		MouseClickDrag, left, 1420,210,935,985,10
		sleep, 300
		MouseClickDrag, left, 1475,210,975,985,10
		sleep, 300
	}
	if (c=1)
	{
		MouseClickDrag, left,1290,205,845,985,10
		sleep, 300
		MouseClickDrag, left,1290,205,895,990,10
		sleep, 300
		MouseClickDrag, left,1290,205,935,985,10
		sleep, 300
		MouseClickDrag, left,1290,205,975,985,10
		sleep, 300
	}
	if (c=3)
	{
		MouseClickDrag, left, 1290,205,845,985,10
		MouseClickDrag, left, 1355,215,895,990,10
		MouseClickDrag, left, 1420,210,935,985,10
		Imagesearch, x,y, 1254,170,1275,200,*Trans0x3F48CC 2.png ;case1
		e:=0
		if (errorlevel=0)
		{
			MouseClickDrag, left, 1290,205,975,985,10
		}
		else
		{
			ImageSearch, x,y, 1311,170,1340,200,*Trans0x3F48CC 2.png ;case2
			if (errorlevel=0)
			{
				MouseClickDrag, left, 1355,215,975,985,10
			}
			else
			{
				ImageSearch, x,y, 1386,170,1400,200,*Trans0x3F48CC 2.png ;case3
				if (errorlevel=0)
				{
					MouseClickDrag, left, 1420,210,975,985,10
				}
			}
		}
	}
	if (c=2)
	{
		MouseClickDrag, left, 1290,205,845,985,10
		sleep, 300
		MouseClickDrag, left, 1355,215,895,990,10
		sleep, 300
		Imagesearch, x,y, 1254,170,1275,200,*Trans0x3F48CC 2.png ;case1
		e:=0
		if (errorlevel=0)
		{
			e:=1
		}
		Imagesearch, x,y, 1254,170,1275,200,*Trans0xED1C24 3.png ;case1
		if (errorlevel=0)
		{
			e:=2
		}
		if (e=1)
		{
			MouseClickDrag, left, 1290,205,935,985,10
			sleep, 300
			MouseClickDrag, left, 1355,215,975,990,10
			sleep, 300
		}
		else if (e=2)
		{
			MouseClickDrag, left, 1290,205,935,985,10
			sleep, 300
			MouseClickDrag, left, 1290,205,975,990,10
			sleep, 300
		}
		else
		{
			MouseClickDrag, left,1355,215,935,990,10
			sleep, 300
			MouseClickDrag, left,1355,215,975,985,10
			sleep, 300	
		}
	}
	click, 1585,74
	sleep, 200
	sendinput, {&}
	sleep, 200
	click, 1217,421
	sleep, 200
	sendinput, {é}
	sleep, 200
	click, 1113,419
	sleep, 200
	sendinput, {"}
	sleep, 200
	click, 1116,463
	sleep, 200
	sendinput, {'}
	sleep, 200
	click, 1212,470
	sleep, 200
	return
}
