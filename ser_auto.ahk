#include objet.ahk
#include sortir_enclos.ahk
#include entrer_enclos.ahk
#include inv_to_etable.ahk
#include enclos_to_etable.ahk
#include etable_to_enclos.ahk
#Include select_filtre.ahk
#Include clear_filters_etable.ahk



ser_auto(byref serenite)
{
	if(serenite="400")
	{
		objet:="nileza"
		image1:="4ser"
		image2:="3ser"
		filtre:="ser_pos"
	}
	else if (serenite="-400")
	{
		objet:="sylargh"
		image1:="n4ser"
		image2:="n3ser"
		filtre:="ser_neg"
	}
	
	select_filtre("etable",filtre, "s")
	ImageSearch, x, y, 0,0, 750, 150,*5 %filtre%.png
	if (errorlevel=0)
	{
		mousemove, 648,189
		sendinput, {WheelUp 250}
		click, 648,189
		pixelsearch,,, 648,189,648,189,0x52565B,5
		T2=0
		while (errorlevel!=0)
		{
			sleep, 50
			T2+=50
			if (T2>3000)
			{
				click, 648,189
				T2=0
			}
			pixelsearch,,, 648,189,648,189,0x52565B,5
		}
		
		pixelsearch,,, 1026,826,1026,826,0x2C3237,5
		T2=0
		while (errorlevel!=0)
		{
			sleep, 50
			pixelsearch,,, 1026,826,1026,826,0x2C3237,5
		}
		sleep, 200
		
		mousemove, 570,187
		sleep, 200
		sendinput, {wheelup 20}
		sleep, 400
		click, 570,187
		sleep, 200
		
		pixelsearch,,,381,480,381,480,0xFFFFFF
		if (errorlevel=0)
		{
			loop, 8
			{
				r=0
				imagesearch, x,y,900,758,973,800,*5 %image1%.png
				if (errorlevel=0)
				{
					r+=1
				}
				sleep, 100
				imagesearch, x,y,900,758,973,800,*5 %image2%.png
				if (errorlevel=0)
				{
					r+=1
				}
				sleep, 100
				if (r=0)
				{
					sendinput, {down}
					sleep, 200
				}
				else
				{
					sendinput, {'}
					sleep, 1500
				}
				sleep, 400
			}
			
			a=0
			k=0
			while (a=0 and k=0)
			{
				pixelsearch,,,626,475,626,475,0x52565B,5
				c:=errorlevel
				pixelsearch,,,626,475,626,475,0x4A4F53,5
				d:=errorlevel
				b:=c*d
				r=0
				imagesearch, x,y,900,758,973,800,*5 %image1%.png
				if (errorlevel=0)
				{
					r=1
				}
				sleep, 100
				imagesearch, x,y,900,758,973,800,*5 %image2%.png
				if (errorlevel=0)
				{
					r=1
				}
				sleep, 100
				if (r=0)
				{
					sendinput, {down}
					sleep, 200
				}
				else
				{
					sendinput, {'}
					sleep, 1500
				}
				sleep, 400
				if (b=0)
				{
					pixelsearch,,,626,475,626,475,0x52565B,5
					c:=errorlevel
					pixelsearch,,,626,475,626,475,0x4A4F53,5
					d:=errorlevel
					e:=c*d
					if (e=0)
					{
						a=1
					}
				}
				pixelsearch,,,381,480,381,480,0xFFFFFF
				k:=errorlevel
				if (k=1)
				{
					loop, 8
					{
						r=0
						imagesearch, x,y,900,758,973,800,*5 %image1%.png
						if (errorlevel=0)
						{
							r+=1
						}
						sleep, 100
						imagesearch, x,y,900,758,973,800,*5 %image2%.png
						if (errorlevel=0)
						{
							r+=1
						}
						sleep, 100
						if (r=0)
						{
							sendinput, {down}
							sleep, 200
						}
						else
						{
							sendinput, {'}
							sleep, 1500
						}
					}
				}
			}
		}
		else
		{
			loop, 8
			{
				r=0
				imagesearch, x,y,900,758,973,800,*5 %image1%.png
				if (errorlevel=0)
				{
					r+=1
				}
				sleep, 100
				imagesearch, x,y,900,758,973,800,*5 %image2%.png
				if (errorlevel=0)
				{
					r+=1
				}
				sleep, 100
				if (r=0)
				{
					sendinput, {down}
					sleep, 200
				}
				else
				{
					sendinput, {'}
					sleep, 1500
				}
			}
		}
	}
	
	clear_filters_etable()
	
	pixelsearch,,,381,187,381,187,0xFFFFFF,5 ;etable
	if (errorlevel=0)
	{
		sortir_enclos()
		
		objet(objet)
		
		entrer_enclos()
		
		CD=300000
		
		a=0
		T=0
		while (a=0)
		{
			while (T<CD and a=0)
			{
				T1:=A_TickCount
				
				etable_to_enclos()
				
				pixelsearch,,,381,700,381,700,0xFFFFFF,5
				Tn=0
				while (errorlevel!=0)
				{
					pixelsearch,,,381,700,381,700,0xFFFFFF,5
					sleep, 100
					Tn+=100
					if(Tn>=5000)
					{
						etable_to_enclos()
						Tn=0
					}
				}
				
				sendInput, {Tab}
				sleep, 2000
				r=0 ;monture ready or not
				click, 642,695
				pixelsearch,,, 642,695,642,695,0x52565B,5
				T2=0
				while (errorlevel!=0)
				{
					sleep, 100
					T2+=100
					if (T2>=3000)
					{
						click, 642,695
						T2=0
					}
					pixelsearch,,, 642,695,642,695,0x52565B,5
				}
				sleep, 100
				pixelsearch,,, 1026,826,1026,826,0x2C3237,5
				T2=0
				while (errorlevel!=0)
				{
					sleep, 50
					pixelsearch,,, 1026,826,1026,826,0x2C3237,5
				}
				sleep, 200
				
				loop, 20
				{
					r=0
					imagesearch, x,y,900,758,973,800,*5 %image1%.png
					if errorlevel=0
					{
						r+=1
					}
					imagesearch, x,y,900,758,973,800,*5 %image2%.png
					if errorlevel=0
					{
						r+=1
					}
					if (r=0)
					{
						sendinput, {down}
						sleep, 200
					}
					else
					{
						sendinput, {'}
						sleep, 1500
					}
					
				}
				
				loop, 15
				{
					r=0
					imagesearch, x,y,900,758,973,800,*5 %image1%.png
					if errorlevel=0
					{
						r+=1
					}
					imagesearch, x,y,900,758,973,800,*5 %image2%.png
					if errorlevel=0
					{
						r+=1
					}
					if (r=0)
					{
						sendinput, {up}
						sleep, 200
					}
					else
					{
						sendinput, {'}
						sleep, 1500
					}
					
				}
				pixelsearch,,,381,700,381,700,0xFFFFFF,5 ;enclos
				b:=errorlevel
				pixelsearch,,,381,187,381,187,0xFFFFFF,5 ;etable
				c:=errorlevel
				a:=b*c
				if (b=0)
				{
					enclos_to_etable()
					
					pixelsearch,,,381,700,381,700,0xFFFFFF,5
					Tn=0
					while (errorlevel=0)
					{
						pixelsearch,,,381,700,381,700,0xFFFFFF,5
						sleep, 100
						Tn+=100
						if(Tn>=5000)
						{
							enclos_to_etable()
							Tn=0
						}
					}
				}
				
				
				T:=T+(A_tickcount-T1)
			}	
			if (T>=CD)
			{
				sortir_enclos()
				
				objet(objet)
				
				entrer_enclos()
				
				T=0
			}
		}
	}
	
	;inventaire à l'étable
	inv_to_etable()
	
	
	return
}